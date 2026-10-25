// BUILD 4 FCS-MPC watch setup for CCS 12.x Scripting Console.
// Select CPU1 and load the matching program before loading this script.
// Replaces watch expressions only; no target writes, start, reset or trip clear.
// Load using View -> Scripting Console -> Open JavaScript File.

expRemoveAll();

// Start/stop controls and bus reference. Import does not change their values.
expAdd("VIENNA_clearTrip", getNatural());
expAdd("VIENNA_closeGiLoop", getNatural());
expAdd("VIENNA_closeGvLoop", getNatural());
expAdd("VIENNA_closeGsLoop", getNatural());
expAdd("VIENNA_vBusRef_pu", getNatural());
expAdd("VIENNA_vBusRefSlewed_pu", getNatural());

// Bus and RMS measurements.
expAdd("VIENNA_guiVbus_Volts", getNatural());
expAdd("VIENNA_guiVbusPM_Volts", getNatural());
expAdd("VIENNA_guiVbusMN_Volts", getNatural());
expAdd("VIENNA_vBusMeas_pu", getNatural());
expAdd("VIENNA_vBusPMMeas_pu", getNatural());
expAdd("VIENNA_vBusMNMeas_pu", getNatural());
expAdd("VIENNA_vBusDiff_pu", getNatural());
expAdd("VIENNA_vRmsMeasAvg_pu", getNatural());
expAdd("VIENNA_guiVrms1_Volts", getNatural());
expAdd("VIENNA_guiVrms2_Volts", getNatural());
expAdd("VIENNA_guiVrms3_Volts", getNatural());
expAdd("VIENNA_guiIrms1_Amps", getNatural());
expAdd("VIENNA_guiIrms2_Amps", getNatural());
expAdd("VIENNA_guiIrms3_Amps", getNatural());
expAdd("VIENNA_guiPF1", getNatural());
expAdd("VIENNA_guiPF2", getNatural());
expAdd("VIENNA_guiPF3", getNatural());
expAdd("VIENNA_guiACFreq_Hz", getNatural());

// Board status and FCS timing.
expAdd("VIENNA_boardStatus", getNatural());
expAdd("VIENNA_buildInfo", getNatural());
expAdd("VIENNA_fcsDeadlineMissCount", getNatural());
expAdd("VIENNA_fcsIsrCycles", getNatural());
expAdd("VIENNA_fcsIsrCyclesMax", getNatural());
expAdd("VIENNA_fcsSwitchState", getNatural());
expAdd("VIENNA_fcsOffReady", getNatural());

// Current references, feedback and voltage-loop output.
expAdd("VIENNA_iLRef_pu", getNatural());
expAdd("VIENNA_iL1Ref_pu", getNatural());
expAdd("VIENNA_iL2Ref_pu", getNatural());
expAdd("VIENNA_iL3Ref_pu", getNatural());
expAdd("VIENNA_iL1Meas_pu", getNatural());
expAdd("VIENNA_iL2Meas_pu", getNatural());
expAdd("VIENNA_iL3Meas_pu", getNatural());
expAdd("VIENNA_gv_out", getNatural());

// Configured software voltage-trip threshold: observe only.
expAdd("VIENNA_guiVbusTripLimit_Volts", getNatural());

// ePWM1/2/3 TZFLG, verified against F2837xD driverlib; observe only.
expAdd("*(volatile unsigned int *)0x4093", getHex());
expAdd("*(volatile unsigned int *)0x4193", getHex());
expAdd("*(volatile unsigned int *)0x4293", getHex());
