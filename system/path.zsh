PROGRAM_FILES="/data/Programs"
ARM_NONE="$PROGRAM_FILES/arm-2014.05"
LINARO_ARM="$PROGRAM_FILES/gcc-linaro-4.9-2014.11-x86_64_arm-linux-gnueabi"
LINARO_AARCH64="$PROGRAM_FILES/gcc-linaro-4.9-2014.11-x86_64_aarch64-linux-gnu"

authenticator=/data/workspace/secclimobile/android/authenticator

export JAVA_HOME="$PROGRAM_FILES/jdk1.8.0_40"
export PATH="$PATH:$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_NDK_HOME:$GOROOT/bin"
export PATH="$PATH:$ARM_NONE/bin:$LINARO_ARM/bin:$LINARO_AARCH64/bin"
