LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=\
	sqlite3.c

LOCAL_CFLAGS := -O2 -g

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)

LOCAL_SHARED_LIBRARIES += libdl

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := libsqlite3

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=\
	shell.c

LOCAL_CFLAGS := -O2 -g

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)

LOCAL_SHARED_LIBRARIES += libdl libsqlite3

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := sqlite3

include $(BUILD_EXECUTABLE)
