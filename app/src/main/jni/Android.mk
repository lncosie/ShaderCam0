LOCAL_PATH			:= $(call my-dir)
SRC_PATH			:= ../../
COMMON_PATH			:= $(SRC_PATH)/Common
COMMON_INC_PATH		:= $(COMMON_PATH)/Include
COMMON_SRC_PATH		:= $(COMMON_PATH)/Source

include $(CLEAR_VARS)

LOCAL_MODULE    := Simple_VertexShader
LOCAL_CFLAGS    += -DANDROID


LOCAL_SRC_FILES := $(LOCAL_PATH)/esShader.c \
				   $(LOCAL_PATH)/esShapes.c \
				   $(LOCAL_PATH)/esTransform.c \
				   $(LOCAL_PATH)/esUtil.c \
				   $(LOCAL_PATH)/esUtil_Android.c \
				   $(LOCAL_PATH)/Simple_VertexShader.c
				   
				   
				   

LOCAL_C_INCLUDES	:= $(SRC_PATH) \
					   $(COMMON_INC_PATH)
				   
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2

LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
