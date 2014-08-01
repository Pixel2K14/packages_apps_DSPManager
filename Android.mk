LOCAL_PATH:= $(call my-dir)
<<<<<<< HEAD
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v13

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := DSPManager

LOCAL_OVERRIDES_PACKAGES := MusicFX

include $(BUILD_PACKAGE)

# Use the folloing include to make our test apk.
=======

# Build the Phone app which includes the emergency dialer. See Contacts
# for the 'other' dialer.
include $(CLEAR_VARS)

LOCAL_JAVA_LIBRARIES := telephony-common voip-common telephony-msim
LOCAL_STATIC_JAVA_LIBRARIES := com.android.phone.shared \
        com.android.services.telephony.common \
        guava \

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_SRC_FILES += \
        src/com/android/phone/EventLogTags.logtags \
        src/com/android/phone/INetworkQueryService.aidl \
        src/com/android/phone/INetworkQueryServiceCallback.aidl \
        src/org/codeaurora/ims/IImsService.aidl \
        src/org/codeaurora/ims/IImsServiceListener.aidl \
        src/org/codeaurora/btmultisim/IBluetoothDsdaService.aidl

LOCAL_PACKAGE_NAME := TeleService

LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

# Build the test package
>>>>>>> bf43758125cb7f42b26fe82cd5773cfc7d41c296
include $(call all-makefiles-under,$(LOCAL_PATH))
