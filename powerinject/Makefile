export ARCHS = arm64
export TARGET = iphone:clang:8.1:8.1

include theos/makefiles/common.mk

TWEAK_NAME = PowerInject
PowerInject_FILES = Tweak.xm
PowerInject_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
$(warning $(THEOS_STAGING_DIR))
internal-stage::
	#PreferenceLoader plist
	$(ECHO_NOTHING)if [ -f Preferences.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/PowerInject;$(ECHO_END)
	$(ECHO_NOTHING)cp Preferences.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/PowerInject/; fi$(ECHO_END)

after-install::
	install.exec "killall -9 SpringBoard"
