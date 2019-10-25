# 
find_package(SDL2 REQUIRED)
find_package(NuiTrack REQUIRED)
find_package(OpenISS REQUIRED)
# 
include_directories(${SDL2_INCLUDE_DIRS})
include_directories(${NUITRACK_INCLUDE_DIR})
include_directories(${OPENISS_INCLUDE_DIRS})
# 
add_executable(SnakeGame main.cpp game.cpp controller.cpp renderer.cpp snake.cpp)
# 
string(STRIP ${SDL2_LIBRARIES} SDL2_LIBRARIES)
# 
if(OPENISS_FOUND)
	target_link_libraries(SnakeGame ${SDL2_LIBRARIES})
	target_link_libraries(SnakeGame ${OPENISS_LIBRARIES})
	target_link_libraries(SnakeGame ${NUITRACK_LIBRARY})
	target_link_libraries(SnakeGame ${MIDDLEWARE_LIBRARY})
else()
	message("OpenISS not found!")
endif()