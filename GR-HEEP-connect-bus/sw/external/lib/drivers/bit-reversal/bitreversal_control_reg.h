// Generated register defines for bitreversal_control

#ifndef _BITREVERSAL_CONTROL_REG_DEFS_
#define _BITREVERSAL_CONTROL_REG_DEFS_

#ifdef __cplusplus
extern "C" {
#endif
// Register width
#define BITREVERSAL_CONTROL_PARAM_REG_WIDTH 32

// Operando de entrada
#define BITREVERSAL_CONTROL_DIN_REG_OFFSET 0x0

// Control de inicio de la operación
#define BITREVERSAL_CONTROL_START_REG_OFFSET 0x4
#define BITREVERSAL_CONTROL_START_START_BIT 0

// Permite obtener dato resultado, por cada activacion
#define BITREVERSAL_CONTROL_READ_REG_OFFSET 0x8
#define BITREVERSAL_CONTROL_READ_READ_BIT 0

// Permite encolar un dato en la FIFO, por cada activacion
#define BITREVERSAL_CONTROL_WRITE_REG_OFFSET 0xc
#define BITREVERSAL_CONTROL_WRITE_WRITE_BIT 0

// Estado de la operación
#define BITREVERSAL_CONTROL_DONE_REG_OFFSET 0x10
#define BITREVERSAL_CONTROL_DONE_DONE_BIT 0

// Resultado de la operación
#define BITREVERSAL_CONTROL_DOUT_REG_OFFSET 0x14

#ifdef __cplusplus
}  // extern "C"
#endif
#endif  // _BITREVERSAL_CONTROL_REG_DEFS_
// End generated register defines for bitreversal_control
