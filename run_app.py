#!/usr/bin/env python3
import subprocess
import os
import sys
import time

project_path = r"c:\Users\Master\Desktop\Code\MiGanado\miganado"
device_id = "V2247"

os.chdir(project_path)

print("=" * 60)
print("MiGanado - Install and Run Script")
print("=" * 60)
print(f"Project: {project_path}")
print(f"Device: {device_id}")
print()

# Step 1: Check if APK exists
apk_path = os.path.join(project_path, "build", "app", "outputs", "flutter-apk", "app-debug.apk")
if not os.path.exists(apk_path):
    print("❌ APK not found. Building...")
    result = subprocess.run(["flutter", "build", "apk", "--debug"], cwd=project_path)
    if result.returncode != 0:
        print("❌ Build failed!")
        sys.exit(1)
    print("✅ Build successful!")
else:
    print(f"✅ APK found: {apk_path}")

# Step 2: Install APK
print("\n📱 Installing APK...")
install_cmd = ["flutter", "install", "-d", device_id]
result = subprocess.run(install_cmd, cwd=project_path)

if result.returncode != 0:
    print("⚠️  Install via flutter had issues, trying direct adb...")
    # Try with adb if flutter install fails
    os.system(f"adb -s {device_id} install -r {apk_path}")

print("\n✅ App installed!")

# Step 3: Start the app
print("\n🚀 Starting app...")
subprocess.run([
    "adb", "-s", device_id, "shell", 
    "am", "start", "-n", 
    "com.miganado.miganado/.MainActivity"
], cwd=project_path)

print("\n✅ App should be running now!")
print("\nPress Ctrl+C to exit")

try:
    subprocess.run(["flutter", "logs", "-d", device_id], cwd=project_path)
except KeyboardInterrupt:
    print("\nExiting...")
