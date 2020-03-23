#include <jni.h>
#include "fftools/ffmpeg.h"

JNIEXPORT jint JNICALL
Java_tv_danmaku_ijk_media_player_1armv7a_Pragma_FFmpegExec(JNIEnv *env,jclass type,jobjectArray cmd){
    int len = (*env)->GetArrayLength(env,cmd);
    char *argv[len];
    int i;
    for(i = 0;i < len;++i){
        argv[i] = (char *) (*env)->GetStringUTFChars(env,(jstring) (*env)->GetObjectArrayElement(env,cmd,i),0);
    }
    return ffmpeg_exec(len,argv);
}
