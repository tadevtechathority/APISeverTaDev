THEOS_DEVICE_IP = 192.168.1.5 -p 22 # install to device from pc
export THEOS=/home/codespace/theos
ARCHS = arm64 #arm64e
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

# 0 to treat warnings as errors, 1 otherwise.
IGNORE_WARNINGS=1


TARGET = iphone:clang:latest:12.0



## Common frameworks ##
PROJ_COMMON_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = hackmenu 

hackmenu_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_LDFLAGS += API/libTKAPIKey.a
hackmenu_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG

ifeq ($(IGNORE_WARNINGS),1)
  hackmenu_CFLAGS += -w
  hackmenu_CCFLAGS += -w
endif

hackmenu_FILES = Menu.mm

hackmenu_FRAMEWORKS = $(PROJ_COMMON_FRAMEWORKS)

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
  install.exec "killall -9 kgvn|| :"
