TOP = ..
include $(TOP)/configure/CONFIG
ARCH = $(EPICS_HOST_ARCH)

include $(TOP)/configure/RULES

.PHONY: makedllPath

ifdef T_A

install: makedllPath

makedllPath:
	$(CONVERTRELEASE) -a $(T_A) -T $(TOP) dllPath.bat
	$(MV) dllPath.bat ../dllPath-$(T_A).bat 

endif
	
ifeq ($(BASE_3_14),YES)
clean:: myclean
else
clean: myclean
endif

myclean:
	$(RM) dllPath-*.bat
