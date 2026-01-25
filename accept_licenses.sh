#!/bin/bash
# Aceptar todas las licencias de Android
$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --licenses <<< $(printf '\ny\n%.0s' {1..100})
