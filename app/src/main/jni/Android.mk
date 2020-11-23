LOCAL_PATH := $(call my-dir)


#SDL2


include $(CLEAR_VARS)
LOCAL_MODULE := SDL2
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/vendor/SDL2-2.0.12/include
LOCAL_C_INCLUDES := $(LOCAL_PATH)/vendor/SDL2-2.0.12/include
LOCAL_CFLAGS := -DGL_GLEXT_PROTOTYPES
LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/audio/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/audio/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/audio/dummy/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/audio/openslES/*.c) \
	$(LOCAL_PATH)/vendor/SDL2-2.0.12/src/atomic/SDL_atomic.c.arm \
	$(LOCAL_PATH)/vendor/SDL2-2.0.12/src/atomic/SDL_spinlock.c.arm \
	$(LOCAL_PATH)/vendor/SDL2-2.0.12/src/hidapi/android/hid.cpp \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/core/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/cpuinfo/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/dynapi/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/events/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/file/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/haptic/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/haptic/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/joystick/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/joystick/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/joystick/hidapi/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/loadso/dlopen/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/power/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/power/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/filesystem/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/sensor/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/sensor/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/render/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/render/*/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/stdlib/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/thread/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/thread/pthread/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/timer/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/timer/unix/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/video/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/video/android/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/video/yuv2rgb/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2-2.0.12/src/test/*.c))
LOCAL_STATIC_LIBRARIES := cpufeatures
LOCAL_EXPORT_LDLIBS := -ldl -lGLESv1_CM -lGLESv2 -lOpenSLES -llog -landroid
include $(BUILD_STATIC_LIBRARY)


#SDL2_image


include $(CLEAR_VARS)
LOCAL_MODULE := SDL2_image
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/vendor/SDL2_image-2.0.5
LOCAL_C_INCLUDES := $(LOCAL_PATH)/vendor/SDL2_image-2.0.5
LOCAL_C_INCLUDES += $(LOCAL_PATH)/vendor/SDL2-2.0.12/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/vendor/SDL2_image-2.0.5/external/libpng-1.6.37
LOCAL_C_INCLUDES += $(LOCAL_PATH)/vendor/SDL2_image-2.0.5/external/zlib-1.2.11
LOCAL_CFLAGS := -DLOAD_PNG
LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2_image-2.0.5/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2_image-2.0.5/external/libpng-1.6.37/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2_image-2.0.5/external/zlib-1.2.11/*.c) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2_image-2.0.5/external/libpng-1.6.37/arm/*.S) \
	$(wildcard $(LOCAL_PATH)/vendor/SDL2_image-2.0.5/external/libpng-1.6.37/arm/*.c))
include $(BUILD_STATIC_LIBRARY)


#VTiles


include $(CLEAR_VARS)
LOCAL_MODULE := VTiles
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := src/main.cpp
LOCAL_CPPFLAGS := -std=c++17
LOCAL_STATIC_LIBRARIES += SDL2
LOCAL_STATIC_LIBRARIES += SDL2_image
include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/cpufeatures)