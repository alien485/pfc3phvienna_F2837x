//#############################################################################
//
// FILE:   driverlib.h
//
// TITLE:  C28x Driverlib Header File
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
#ifndef DRIVERLIB_H
#define DRIVERLIB_H



#include "inc/hw_memmap.h"
#include "adc.h"
#include "asysctl.h"

#ifndef __TMS320C28XX_CLA__

#include "can.h"
#include "cla.h"
#include "cpu.h"
#include "cputimer.h"

#endif

#include "cmpss.h"


#ifndef __TMS320C28XX_CLA__
#include "dac.h"
#include "dcsm.h"
#include "debug.h"
#include "dma.h"
#endif


#include "ecap.h"

#ifndef __TMS320C28XX_CLA__
#include "emif.h"
#endif

#include "epwm.h"

#ifndef __TMS320C28XX_CLA__
#include "eqep.h"
#include "flash.h"
#endif


#include "gpio.h"
#ifndef __TMS320C28XX_CLA__
#include "hrpwm.h"
#include "i2c.h"
#include "interrupt.h"
#endif


#include "pin_map.h"
#include "sdfm.h"
#include "version.h"
#include "xbar.h"

#ifndef __TMS320C28XX_CLA__
#include "mcbsp.h"
#include "memcfg.h"
#include "sysctl.h"
#include "upp.h"
#include "sci.h"
#include "spi.h"
#endif

#include "driver_inclusive_terminology_mapping.h"

#endif  // end of DRIVERLIB_H definition

//
// End of file
//
