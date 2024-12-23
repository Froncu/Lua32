cmake_minimum_required(VERSION 3.12)
project(Win32)

if(NOT MSVC)
   message(FATAL_ERROR "This project currently can be build only using Microsoft Visual C++ (MSVC).")
endif()

add_executable(${PROJECT_NAME}
   engine/AbstractGame.cpp
   engine/Game.cpp
   engine/GameEngine.cpp
   engine/GameWinMain.cpp
   engine/Game.rc)

target_compile_options(${PROJECT_NAME} PRIVATE /source-charset:utf-8)
target_compile_definitions(${PROJECT_NAME} PRIVATE UNICODE _UNICODE)
target_link_options(${PROJECT_NAME} PRIVATE /SUBSYSTEM:WINDOWS)
set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 20)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
include(lua)
include(sol2)