#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG

DIRS := configure

DIRS += src run
src_DEPEND_DIRS = configure
run_DEPEND_DIRS = src

#EMBEDDED_TOPS := $(wildcard *Top)

DIRS += $(EMBEDDED_TOPS)

define dir_DEP
  $(1)_DEPEND_DIRS = src
endef

$(foreach dir, $(EMBEDDED_TOPS), $(eval $(call dir_DEP,$(dir))))

include $(TOP)/configure/RULES_TOP
