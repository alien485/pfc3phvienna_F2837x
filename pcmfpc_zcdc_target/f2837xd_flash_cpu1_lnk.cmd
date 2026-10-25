
MEMORY
{
PAGE 0 :
/* Program Memory */
/* Memory (RAM/FLASH) blocks can be moved to PAGE1 for data allocation */
/* BEGIN is used for the "boot to Flash" bootloader mode   */

   BEGIN           	: origin = 0x080000, length = 0x000002
   RAMM0           	: origin = 0x000122, length = 0x0002DE

   RAMLS2LS3LS4LS5  : origin = 0x009000, length = 0x002000

   RAMD0            : origin = 0x00B000, length = 0x000800

   RAMGS0GS1        : origin = 0x00C000, length = 0x002000

   RAMGS12GS15     : origin = 0x018000, length = 0x004000

   RESET           	: origin = 0x3FFFC0, length = 0x000002
   
   /* Flash sectors */
   FLASHA           : origin = 0x080002, length = 0x001FFE	/* on-chip Flash */
   FLASHB           : origin = 0x082000, length = 0x002000	/* on-chip Flash */
   FLASHC           : origin = 0x084000, length = 0x002000	/* on-chip Flash */
   FLASHD           : origin = 0x086000, length = 0x002000	/* on-chip Flash */
   FLASHE           : origin = 0x088000, length = 0x008000	/* on-chip Flash */
   FLASHF           : origin = 0x090000, length = 0x008000	/* on-chip Flash */
   FLASHG           : origin = 0x098000, length = 0x008000	/* on-chip Flash */
   FLASHH           : origin = 0x0A0000, length = 0x008000	/* on-chip Flash */
   FLASHI           : origin = 0x0A8000, length = 0x008000	/* on-chip Flash */
   FLASHJ           : origin = 0x0B0000, length = 0x008000	/* on-chip Flash */
   FLASHK           : origin = 0x0B8000, length = 0x002000	/* on-chip Flash */
   FLASHL           : origin = 0x0BA000, length = 0x002000	/* on-chip Flash */
   FLASHM           : origin = 0x0BC000, length = 0x002000	/* on-chip Flash */
   FLASHN           : origin = 0x0BE000, length = 0x002000	/* on-chip Flash */   

PAGE 1 :
/* Data Memory */
/* Memory (RAM/FLASH) blocks can be moved to PAGE0 for program allocation */

   BOOT_RSVD       : origin = 0x000002, length = 0x000120

   RAMM1           : origin = 0x000400, length = 0x000400

   RAMLS0LS1       : origin = 0x008000, length = 0x001000

   RAMD1           : origin = 0x00B800, length = 0x000800

   RAMGS2      : origin = 0x00E000, length = 0x001000
   RAMGS3      : origin = 0x00F000, length = 0x001000
   RAMGS4GS5 : origin = 0x010000, length = 0x002000
   RAMGS6GS11 : origin = 0x012000, length = 0x006000

   
   CPU2TOCPU1RAM   : origin = 0x03F800, length = 0x000400
   CPU1TOCPU2RAM   : origin = 0x03FC00, length = 0x000400
}


SECTIONS
{
   pcmfpc_code : LOAD = FLASHI, RUN = RAMGS12GS15,
       LOAD_START(PCCodeLoadStart), LOAD_SIZE(PCCodeLoadSize),
       RUN_START(PCCodeRunStart), PAGE = 0, ALIGN(4)
   pcmfpc_trace : > RAMGS4GS5, PAGE = 1, TYPE = NOINIT, ALIGN(4)
   pcmfpc_wave : > RAMGS6GS11, PAGE = 1, TYPE = NOINIT, ALIGN(4)

   /* Allocate program areas: */
   .cinit              : > FLASHB      PAGE = 0, ALIGN(4)
   .init_array              : > FLASHB,     PAGE = 0, ALIGN(4)
   .text               : >> FLASHB|FLASHC|FLASHD|FLASHE PAGE = 0, ALIGN(4)
   codestart           : > BEGIN       PAGE = 0, ALIGN(4)

   /* Allocate uninitalized data sections: */
   .stack              : > RAMM1        PAGE = 1
   .data               : > RAMM1        PAGE = 1
   .bss               : >> RAMGS3      PAGE = 1
   .sysmem            : > RAMGS2       PAGE = 1

   /* Initalized sections go in Flash */
   .const             : >> FLASHF | FLASHG | FLASHH      PAGE = 0, ALIGN(4)
   .switch             : > FLASHB      PAGE = 0, ALIGN(4)
   
   .reset              : > RESET,     PAGE = 0, TYPE = DSECT /* not used, */

   GROUP
   {
       .TI.ramfunc
       {
       -l sfra_f32_tmu_eabi.lib
       }
       ramfuncs

   } LOAD = FLASHD,
	 RUN =  RAMGS0GS1,
	 LOAD_START(RamfuncsLoadStart),
	 LOAD_SIZE(RamfuncsLoadSize),
	 LOAD_END(RamfuncsLoadEnd),
	 RUN_START(RamfuncsRunStart),
	 RUN_SIZE(RamfuncsRunSize),
	 RUN_END(RamfuncsRunEnd),
	 PAGE = 0, ALIGN(4)



   
   /* The following section definitions are required when using the IPC API Drivers */ 
    GROUP : > CPU1TOCPU2RAM, PAGE = 1 
    {
        PUTBUFFER 
        PUTWRITEIDX 
        GETREADIDX 
    }
    
    GROUP : > CPU2TOCPU1RAM, PAGE = 1
    {
        GETBUFFER :    TYPE = DSECT
        GETWRITEIDX :  TYPE = DSECT
        PUTREADIDX :   TYPE = DSECT
    }  
    
    SFRA_F32_Data		: > RAMGS2, ALIGN = 64, PAGE = 1

 	SFRA_Data		: > RAMGS2, ALIGN = 64, PAGE=1

 	FPUmathTables	: > FLASHN, PAGE = 0

   .scratchpad      : > RAMLS0LS1,           PAGE = 1
   .bss_cla         : > RAMLS0LS1,           PAGE = 1
   controlVariables : > RAMLS0LS1,           PAGE = 1

   .const_cla       :  LOAD = FLASHH,
                       RUN = RAMLS2LS3LS4LS5,
                       RUN_START(Cla1ConstRunStart),
                       LOAD_START(Cla1ConstLoadStart),
                       LOAD_SIZE(Cla1ConstLoadSize),
                       PAGE = 0

     GROUP
    {
        isrcodefuncs
        dclfuncs
    }    LOAD = FLASHH,
         RUN =  RAMLS2LS3LS4LS5,
         LOAD_START(isrcodefuncsLoadStart),
         LOAD_SIZE(isrcodefuncsLoadSize),
         LOAD_END(isrcodefuncsLoadEnd),
         RUN_START(isrcodefuncsRunStart),
         RUN_SIZE(isrcodefuncsRunSize),
         RUN_END(isrcodefuncsRunEnd),
         PAGE = 0, ALIGN(4)

                       /* CLA specific sections */
    Cla1Prog        : LOAD = FLASHH,
                      RUN = RAMLS2LS3LS4LS5,
                      LOAD_START(Cla1ProgLoadStart),
                      RUN_START(Cla1ProgRunStart),
                      LOAD_SIZE(Cla1ProgLoadSize),
                      PAGE = 0, ALIGN(4)

    
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
