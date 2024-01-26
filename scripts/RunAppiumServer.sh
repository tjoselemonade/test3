#!/bin/bash
set -ex
npm install -g appium@1.22.3
appium -v
appium &>/dev/null &