#!/bin/bash
#using shebang with -i to enable interactive mode (auto load .bashrc)

set -e #stop immediately if any error happens

# export $JAVA_HOME=/usr/lib/jvm/temurin-11-jdk-amd64

# ln -s /opt/androidsdk/tools/emulator /usr/local/bin/emulator
yes |  /opt/androidsdk/tools/bin/sdkmanager "platform-tools" "platforms;android-28" "emulator"
yes | /opt/androidsdk/tools/bin/sdkmanager "system-images;android-28;google_apis;x86_64"


#  /opt/androidsdk/tools/emulator
/opt/androidsdk/tools/emulator -version

echo "INSTALL ANDROID SDK DONE!"

/path/to/android-sdk/tools