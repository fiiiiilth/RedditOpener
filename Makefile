TARGET = iphone:clang:9.2

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = RedditOpenerHandler
RedditOpenerHandler_FILES = RedditOpenerHandler.m
RedditOpenerHandler_INSTALL_PATH = /Library/Opener
RedditOpenerHandler_EXTRA_FRAMEWORKS = Opener Foundation

include $(THEOS_MAKE_PATH)/bundle.mk
