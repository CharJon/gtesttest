cmake_minimum_required(VERSION 3.13)
set(CMAKE_CXX_STANDARD 20)

project(gcc13test)

if (NOT CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "" FORCE)
endif ()

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
add_link_options("-ld_classic")
#set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "") # Enable/Disable output of compile commands during generation

### This Project #####
add_executable(testbin
        src/main.cpp
)

target_include_directories(testbin
        PRIVATE
        ${PROJECT_SOURCE_DIR}/include
)

## install
message(STATUS ${CMAKE_INSTALL_PREFIX})
