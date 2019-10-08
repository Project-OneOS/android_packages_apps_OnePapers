LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES += $(call all-java-files-under, app/src)

LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := current

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    android-support-v7-appcompat \
    android-support-design

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res \
    frameworks/support/v7/appcompat/res \

LOCAL_AAPT_FLAGS := --auto-add-overlay \
    --extra-packages android.support.v4 \
    --extra-packages android.support.v7.appcompat \
    --extra-packages android.support.design

LOCAL_PACKAGE_NAME := ParanoidPapers

LOCAL_USE_AAPT2 := true

include $(BUILD_PACKAGE)
