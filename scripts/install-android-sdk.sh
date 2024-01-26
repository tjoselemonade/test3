#!/bin/bash
#using shebang with -i to enable interactive mode (auto load .bashrc)

set -e #stop immediately if any error happens

# Install Open SDK
java -version
sudo apt update
sudo apt install openjdk-8-jdk -y
sudo apt-get install android-sdk
# Download JAXB JAR files
wget https://repo1.maven.org/maven2/javax/xml/bind/jaxb-api/2.3.1/jaxb-api-2.3.1.jar
wget https://repo1.maven.org/maven2/org/glassfish/jaxb/jaxb-runtime/2.3.3/jaxb-runtime-2.3.3.jar
# Add JAXB JAR files to the classpath
export CLASSPATH=$CLASSPATH:jaxb-api-2.3.1.jar:jaxb-runtime-2.3.3.jar

java -version

# Install SDK Manager
# you can find this file at https://developer.android.com/studio/index.html#downloads - section command line only
cd ~ && wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
ANDROID_HOME=/opt/androidsdk
mkdir -p $ANDROID_HOME
sudo apt install unzip -y && unzip sdk-tools-linux-4333796.zip -d $ANDROID_HOME
echo "export ANDROID_HOME=$ANDROID_HOME" >> ~/.bashrc
echo 'export SDK=$ANDROID_HOME' >> ~/.bashrc
echo 'export PATH=$SDK/emulator:$SDK/tools:$SDK/tools/bin:$SDK/platform-tools:$PATH' >> ~/.bashrc
source ~/.bashrc

# Install Android Image version 28

# export $JAVA_HOME=/usr/lib/jvm/temurin-11-jdk-amd64
# /usr/lib/jvm/temurin-11-jdk-amd64
# yes | /usr/lib/jvm/temurin-11-jdk-amd64/bin/java -jar /opt/androidsdk/tools/bin/sdkmanager "platform-tools" "platforms;android-28" "emulator"
# yes | /usr/lib/jvm/temurin-11-jdk-amd64/bin/java -jar /opt/androidsdk/tools/bin/sdkmanager "system-images;android-28;google_apis;x86_64"

# emulator -version

# echo "INSTALL ANDROID SDK DONE!"

echo $JAVA_HOME
