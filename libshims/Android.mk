LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libshim_showlogo.cpp
LOCAL_MODULE := libshim_showlogo
LOCAL_SHARED_LIBRARIES := libgui
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libshim_vtservice.cpp
LOCAL_MODULE := libshim_vtservice
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
