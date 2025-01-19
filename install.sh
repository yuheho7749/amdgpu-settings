#!/usr/bin/env bash

chmod +x ./amdgpu-settings
cp ./amdgpu-settings /usr/local/bin/amdgpu-settings

chmod +x ./amdgpu-settings.resume
cp ./amdgpu-settings.resume  /usr/lib/systemd/system-sleep/amdgpu-settings.resume

cp ./amdgpu-settings.config /etc/default/amdgpu-settings.config

cp ./amdgpu-settings.service /etc/systemd/system/amdgpu-settings.service
