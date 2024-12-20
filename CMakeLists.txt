cmake_minimum_required(VERSION 3.12)
project(Win32)

add_executable(${PROJECT_NAME}
   source/AbstractGame.cpp
   source/Game.cpp
   source/GameEngine.cpp
   source/GameWinMain.cpp
   source/Game.rc)

target_compile_options(${PROJECT_NAME} PRIVATE /source-charset:utf-8)
target_compile_definitions(${PROJECT_NAME} PRIVATE UNICODE _UNICODE)
target_link_options(${PROJECT_NAME} PRIVATE /SUBSYSTEM:WINDOWS)