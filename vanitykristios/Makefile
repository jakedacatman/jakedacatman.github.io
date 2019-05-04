include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = VanityKristiOS
VanityKristiOS_FILES = main.m jcAppDelegate.m jcRootViewController.m
VanityKristiOS_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"VanityKristiOS\"" || true
