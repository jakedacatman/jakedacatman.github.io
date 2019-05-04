TARGET = ::7.0
include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = SpeedyKrist
SpeedyKrist_FILES = AppDelegate.swift RootViewController.swift
SpeedyKrist_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"SpeedyKrist\"" || true
