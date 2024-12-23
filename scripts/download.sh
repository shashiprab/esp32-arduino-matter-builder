#!/usr/bin/env bash
cd tools

ESP_IDF_VERSION="v5.3.2"
ESP_MATTER_VERSION="96cb173"
MATTER_VERSION="43aa98c2d3"
ARDUINO_ESP32_VERSION="3.1.0"

git clone -b $ESP_IDF_VERSION --recursive https://github.com/espressif/esp-idf.git esp-idf
git -C esp-idf checkout $ESP_IDF_VERSION
git -C esp-idf submodule update --init --recursive

git clone -b $ESP_MATTER_VERSION --recursive https://github.com/espressif/esp-matter.git esp-matter
git -C esp-matter checkout $ESP_MATTER_VERSION
git -C esp-matter submodule update --init --recursive

git -C esp-matter/connectedhomeip/connectedhomeip checkout $MATTER_VERSION

git clone -b $ARDUINO_ESP32_VERSION https://github.com/espressif/arduino-esp32.git
git -C arduino-esp32 checkout $ARDUINO_ESP32_VERSION
git -C arduino-esp32 submodule update --init --recursive