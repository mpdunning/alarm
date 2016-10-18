#!../../bin/linux-x86_64/alarm

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/alarm.dbd"
alarm_registerRecordDeviceDriver pdbbase

epicsEnvSet("N","01")

#save_restoreSet_status_prefix( "")
#save_restoreSet_IncompleteSetsOk( 1)
#save_restoreSet_DatedBackupFiles( 1)
#set_savefile_path( "/nfs/slac/g/testfac/esb/$(IOC)","autosave")
#set_pass0_restoreFile( "alarm.sav")
#set_pass1_restoreFile( "alarm.sav")

dbLoadRecords("db/alarm.db","P=ESB:AL$(N)")

cd ${TOP}/iocBoot/${IOC}
iocInit

#create_monitor_set( "alarm.req",30,"P=ESB:AL$(N)")
