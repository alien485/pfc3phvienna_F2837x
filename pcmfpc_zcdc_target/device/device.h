//#############################################################################
//
// FILE:   device.h
//
// TITLE:  Device setup for examples.
//
//#############################################################################
// $TI Release: TIDM_1000 v4.01.05.00 $
// $Release Date: Sun Aug  2 16:35:51 UTC 2026 $
// $Copyright:
// Copyright (C) 2026 Texas Instruments Incorporated - http://www.ti.com/
//
// ALL RIGHTS RESERVED
// $
//#############################################################################

//
// Included Files
//
#include "driverlib.h"

#if (!defined(CPU1) && !defined(CPU2))
#error "You must define CPU1 or CPU2 in your project properties.  Otherwise, \
the offsets in your header files will be inaccurate."
#endif

#if (defined(CPU1) && defined(CPU2))
#error "You have defined both CPU1 and CPU2 in your project properties.  Only \
a single CPU should be defined."
#endif

//*****************************************************************************
//
// Defines for pin numbers and other GPIO configuration
//
//*****************************************************************************
//
// LEDs
//
#define DEVICE_GPIO_PIN_LED1        31U  // GPIO number for LD2
#define DEVICE_GPIO_PIN_LED2        34U  // GPIO number for LD3
#define DEVICE_GPIO_CFG_LED1        GPIO_31_GPIO31  // "pinConfig" for LD2
#define DEVICE_GPIO_CFG_LED2        GPIO_34_GPIO34  // "pinConfig" for LD3

//
// SCI for USB-to-UART adapter on FTDI chip
//
#define DEVICE_GPIO_PIN_SCIRXDA     28U             // GPIO number for SCI RX
#define DEVICE_GPIO_PIN_SCITXDA     29U             // GPIO number for SCI TX
#define DEVICE_GPIO_CFG_SCIRXDA     GPIO_28_SCIRXDA // "pinConfig" for SCI RX
#define DEVICE_GPIO_CFG_SCITXDA     GPIO_29_SCITXDA // "pinConfig" for SCI TX

//
// CANA
//
#define DEVICE_GPIO_PIN_CANTXA      31U  // GPIO number for CANTXA
#define DEVICE_GPIO_PIN_CANRXA      30U  // GPIO number for CANRXA

//
// CAN External Loopback
//
#define DEVICE_GPIO_CFG_CANRXA      GPIO_30_CANRXA  // "pinConfig" for CANA RX
#define DEVICE_GPIO_CFG_CANTXA      GPIO_31_CANTXA  // "pinConfig" for CANA TX
#define DEVICE_GPIO_CFG_CANRXB      GPIO_10_CANRXB  // "pinConfig" for CANB RX
#define DEVICE_GPIO_CFG_CANTXB      GPIO_8_CANTXB   // "pinConfig" for CANB TX

//*****************************************************************************
//
// Defines related to clock configuration
//
//*****************************************************************************
//
// Launchpad Configuration
//
#ifdef _LAUNCHXL_F28379D

//
// 10MHz XTAL on LaunchPad. For use with SysCtl_getClock().
//
#define DEVICE_OSCSRC_FREQ          10000000U

//
// Define to pass to SysCtl_setClock(). Will configure the clock as follows:
// PLLSYSCLK = 10MHz (XTAL_OSC) * 40 (IMULT) * 1 (FMULT) / 2 (PLLCLK_BY_2)
//
#define DEVICE_SETCLOCK_CFG         (SYSCTL_OSCSRC_XTAL | SYSCTL_IMULT(40) |  \
                                     SYSCTL_FMULT_NONE | SYSCTL_SYSDIV(2) |   \
                                     SYSCTL_PLL_ENABLE)

//
// 200MHz SYSCLK frequency based on the above DEVICE_SETCLOCK_CFG. Update the
// code below if a different clock configuration is used!
//
#define DEVICE_SYSCLK_FREQ          ((DEVICE_OSCSRC_FREQ * 40 * 1) / 2)

//
// ControlCARD Configuration
//
#else

//
// 20MHz XTAL on controlCARD. For use with SysCtl_getClock().
//
#define DEVICE_OSCSRC_FREQ          20000000U

//
// Define to pass to SysCtl_setClock(). Will configure the clock as follows:
// PLLSYSCLK = 20MHz (XTAL_OSC) * 20 (IMULT) * 1 (FMULT) / 2 (PLLCLK_BY_2)
//
#define DEVICE_SETCLOCK_CFG         (SYSCTL_OSCSRC_XTAL | SYSCTL_IMULT(20) |  \
                                     SYSCTL_FMULT_NONE | SYSCTL_SYSDIV(2) |   \
                                     SYSCTL_PLL_ENABLE)

//
// 200MHz SYSCLK frequency based on the above DEVICE_SETCLOCK_CFG. Update the
// code below if a different clock configuration is used!
//
#define DEVICE_SYSCLK_FREQ          ((DEVICE_OSCSRC_FREQ * 20 * 1) / 2)

#endif

//
// 50MHz LSPCLK frequency based on the above DEVICE_SYSCLK_FREQ and a default
// low speed peripheral clock divider of 4. Update the code below if a
// different LSPCLK divider is used!
//
#define DEVICE_LSPCLK_FREQ          (DEVICE_SYSCLK_FREQ / 4)

//*****************************************************************************
//
// Macro to call SysCtl_delay() to achieve a delay in microseconds. The macro
// will convert the desired delay in microseconds to the count value expected
// by the function. \b x is the number of microseconds to delay.
//
//*****************************************************************************
#define DEVICE_DELAY_US(x) SysCtl_delay(((((long double)(x)) / (1000000.0L /  \
                              (long double)DEVICE_SYSCLK_FREQ)) - 9.0L) / 5.0L)

//*****************************************************************************
//
// Defines, Globals, and Header Includes related to Flash Support
//
//*****************************************************************************
#ifdef _FLASH
#include <stddef.h>

extern uint16_t RamfuncsLoadStart;
extern uint16_t RamfuncsLoadEnd;
extern uint16_t RamfuncsLoadSize;
extern uint16_t RamfuncsRunStart;
extern uint16_t RamfuncsRunEnd;
extern uint16_t RamfuncsRunSize;

extern uint16_t isrcodefuncsLoadStart;
extern uint16_t isrcodefuncsLoadEnd;
extern uint16_t isrcodefuncsLoadSize;
extern uint16_t isrcodefuncsRunStart;
extern uint16_t isrcodefuncsRunEnd;
extern uint16_t isrcodefuncsRunSize;

#define DEVICE_FLASH_WAITSTATES 3

#endif

//*****************************************************************************
//
// Function Prototypes
//
//*****************************************************************************
extern void Device_init(void);
extern void Device_enableAllPeripherals(void);
extern void Device_initGPIO(void);
extern void Device_enableUnbondedGPIOPullupsFor176Pin(void);
extern void Device_enableUnbondedGPIOPullupsFor100Pin(void);
extern void Device_enableUnbondedGPIOPullups(void);
extern void __error__(const char *filename, uint32_t line);

//
// End of file
//
