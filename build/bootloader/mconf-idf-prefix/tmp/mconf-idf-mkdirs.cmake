# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/amine/esp/esp_8266/ESP8266_RTOS_SDK/tools/kconfig")
  file(MAKE_DIRECTORY "/home/amine/esp/esp_8266/ESP8266_RTOS_SDK/tools/kconfig")
endif()
file(MAKE_DIRECTORY
  "/home/amine/esp/esp_8266/hello_world/build/bootloader/kconfig_bin"
  "/home/amine/esp/esp_8266/hello_world/build/bootloader/mconf-idf-prefix"
  "/home/amine/esp/esp_8266/hello_world/build/bootloader/mconf-idf-prefix/tmp"
  "/home/amine/esp/esp_8266/hello_world/build/bootloader/mconf-idf-prefix/src/mconf-idf-stamp"
  "/home/amine/esp/esp_8266/hello_world/build/bootloader/mconf-idf-prefix/src"
  "/home/amine/esp/esp_8266/hello_world/build/bootloader/mconf-idf-prefix/src/mconf-idf-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/amine/esp/esp_8266/hello_world/build/bootloader/mconf-idf-prefix/src/mconf-idf-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/amine/esp/esp_8266/hello_world/build/bootloader/mconf-idf-prefix/src/mconf-idf-stamp${cfgdir}") # cfgdir has leading slash
endif()
