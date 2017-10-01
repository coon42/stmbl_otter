#pragma once
#include <stdint.h>
#include <stdio.h>

//#define HAL_CALC_TIME
//#define HAL_COMP_CALC_TIME


#define HAL_MAX_PINS 1024
#define HAL_MAX_COMPS 32
#define HAL_MAX_CTX 1024

#define HAL_COMP(name)
#define HAL_PIN(name)
#define HAL_PINA(name, index)

extern uint32_t hal_get_systick_value();
extern uint32_t hal_get_systick_reload();
extern uint32_t hal_get_systick_freq();

typedef char NAME[32];

typedef NAME const pin_t;

typedef struct hal_pin_inst_t{
   volatile float value;
   volatile struct hal_pin_inst_t * source;
} hal_pin_inst_t;

typedef const struct{
   NAME name;
   void (*nrt)(volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);
   void (*rt)(float period, volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);
   void (*frt)(float period, volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);

   void (*nrt_init)(volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);
   void (*hw_init)(volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);
   void (*rt_start)(volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);
   void (*frt_start)(volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);
   void (*rt_stop)(volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);
   void (*frt_stop)(volatile void * ctx_ptr, volatile hal_pin_inst_t * pin_ptr);

   uint32_t ctx_size;
   uint32_t pin_count;
} hal_comp_t;

typedef struct hal_comp_inst_t{
   hal_comp_t * comp;
   uint32_t instance;
   volatile void * ctx;
   volatile hal_pin_inst_t * pin_insts;
   pin_t * pins;
   uint32_t ctx_size;
   volatile int32_t rt_ticks;
   volatile int32_t frt_ticks;
   volatile int32_t nrt_ticks;

   volatile int32_t rt_max_ticks;
   volatile int32_t frt_max_ticks;
   volatile int32_t nrt_max_ticks;

   volatile enum {
      PRE_INIT,
      PRE_HW_INIT,
      STARTED,
   } state;
} hal_comp_inst_t;

#define PIN(p) (pins->p.source->source->value)
#define PINA(p, i) (pins->p[i].source->source->value)

typedef struct{
   volatile uint32_t active_rt_func;
   volatile uint32_t active_frt_func;
   volatile uint32_t active_nrt_func;
   volatile enum {
     HardFault,
     NMI,
     MemManage,
     BusFault,
     UsageFault,
  } error_handler;
} hal_error_t;

typedef struct{
   volatile enum{
     RT_CALC,
     RT_SLEEP,
     RT_STOP
   } rt_state;

   volatile enum{
     FRT_CALC,
     FRT_SLEEP,
     FRT_STOP
   } frt_state;

   volatile enum {
     FRT_TOO_LONG,
     RT_TOO_LONG,
     MISC_ERROR,
     MEM_ERROR,
     CONFIG_LOAD_ERROR,
     CONFIG_ERROR,
     NAN_ERROR,
     HAL_OK2
   } hal_state;

   volatile struct hal_comp_inst_t * rt_comps[HAL_MAX_COMPS];
   volatile struct hal_comp_inst_t * frt_comps[HAL_MAX_COMPS];

   volatile int32_t active_rt_func;
   volatile int32_t active_frt_func;
   volatile int32_t active_nrt_func;

   struct hal_comp_inst_t comp_insts[HAL_MAX_COMPS];
   struct hal_pin_inst_t pin_insts[HAL_MAX_PINS];
   volatile uint8_t ctxs[HAL_MAX_CTX]; // create runtime ctx print in python based on COMP_ctx_t
   uint32_t comp_inst_count;
   uint32_t rt_comp_count;
   uint32_t frt_comp_count;
   uint32_t pin_inst_count;
   uint32_t ctx_count;

   volatile uint32_t rt_ticks;
   volatile uint32_t frt_ticks;
   volatile uint32_t nrt_ticks;

   volatile uint32_t rt_max_ticks;
   volatile uint32_t frt_max_ticks;
   volatile uint32_t nrt_max_ticks;

   volatile float rt_period;
   volatile float frt_period;

   hal_error_t error_info;
} hal_t;

extern hal_t hal;

hal_comp_t * comp_by_name(NAME name);
volatile hal_comp_inst_t * comp_inst_by_name(NAME name, uint32_t instance);
uint32_t pin_offset_by_comp_name(NAME name);
pin_t * pin_by_name(NAME comp_name, NAME pin_name);
volatile hal_pin_inst_t * pin_inst_by_name(NAME comp_name, uint32_t instance, NAME pin_name);
uint32_t load_comp(hal_comp_t * comp);
pin_t * pin_by_pin_inst(volatile hal_pin_inst_t * p);
volatile hal_comp_inst_t * comp_inst_by_pin_inst(volatile hal_pin_inst_t * p);
void hal_print_pin(volatile hal_pin_inst_t * p);

void hal_init(float rt_period, float frt_period);
// void hal_init_nrt();
void hal_start();
void hal_stop();
void hal_run_rt();
void hal_run_frt();
void hal_run_nrt();
uint32_t hal_parse(char * cmd);
void hal_error(uint32_t error_handler);

#include "hal_tbl.h"
