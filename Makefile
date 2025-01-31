ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET = iphone:clang:latest:15.0
else ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
TARGET = iphone:clang:latest:15.0
else
TARGET = iphone:clang:latest:14.0
endif
ARCHS  := arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = OSAnalytics
$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
