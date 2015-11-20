include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Spotit
Spotit_FILES = BDSettingsManager.m TBLink.m Tweak.xm
Spotit_FRAMEWORKS = Foundation UIKit
Spotit_PRIVATE_FRAMEWORKS = Search SpotlightUI

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
	find . -name ".DS_STORE" -delete

after-install::
	install.exec "killall -9 SpringBoard"

SUBPROJECTS += spotit
include $(THEOS_MAKE_PATH)/aggregate.mk
