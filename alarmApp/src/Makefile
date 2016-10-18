TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = alarm

DBD += alarm.dbd

alarm_DBD += base.dbd
alarm_DBD += asSupport.dbd


alarm_LIBS += autosave 

alarm_SRCS += alarm_registerRecordDeviceDriver.cpp
alarm_SRCS_DEFAULT += alarmMain.cpp
alarm_SRCS_vxWorks += -nil-

alarm_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

