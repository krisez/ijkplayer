LOCAL_PATH := $(call my-dir)
FFMPEG_FILES := $(realpath $(MY_APP_ANDROID_ROOT)/contrib/ffmpeg-armv7a/fftools)
INCLUDE_FILES := $(realpath $(FFMPEG_FILES)/..)
include $(CLEAR_VARS)
LOCAL_MODULE := ffmpegcmd
LOCAL_SRC_FILES := brige.c $(FFMPEG_FILES)/cmdutils.c $(FFMPEG_FILES)/ffmpeg.c $(FFMPEG_FILES)/ffmpeg_filter.c $(FFMPEG_FILES)/ffmpeg_hw.c $(FFMPEG_FILES)/ffmpeg_opt.c
LOCAL_C_INCLUDES := $(INCLUDE_FILES)
LOCAL_SHARED_LIBRARIES := ijkffmpeg
include $(BUILD_SHARED_LIBRARY)
