TOP = ..
include $(TOP)/configure/CONFIG
ARCH = $(EPICS_HOST_ARCH)
TARGETS = dllPath.bat

include $(TOP)/configure/RULES.Ioc

dllPath.bat:
	$(CONVERTRELEASE) -a $(ARCH) -T $(TOP) $@
