#!/bin/bash
#using shebang with -i to enable interactive mode (auto load .bashrc)

set -e #stop immediately if any error happens

# export $JAVA_HOME=/usr/lib/jvm/temurin-11-jdk-amd64
yes | /usr/lib/jvm/temurin-11-jdk-amd64/bin/java -jar /opt/androidsdk/tools/bin/sdkmanager "platform-tools" "platforms;android-28" "emulator"
yes | /usr/lib/jvm/temurin-11-jdk-amd64/bin/java -jar /opt/androidsdk/tools/bin/sdkmanager "system-images;android-28;google_apis;x86_64"

emulator -version

echo "INSTALL ANDROID SDK DONE!"