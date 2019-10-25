cmake_minimum_required(VERSION 3.7)
project(GestureSnakeGame)
# 
set(CXX_FLAGS "-Wall" "-std=c++17")
set(CMAKE_CXX_FLAGS, "${CXX_FLAGS}")
# 
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")
# 
add_subdirectory(src)