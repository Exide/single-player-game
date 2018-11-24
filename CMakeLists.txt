cmake_minimum_required(VERSION 3.12)
project(single_player_game)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
set(DEPENDENCY_DIR "${CMAKE_CURRENT_LIST_DIR}/dependencies")
find_package(GLFW REQUIRED)
find_package(Vulkan REQUIRED)
find_package(GLM REQUIRED)
find_package(Spdlog REQUIRED)

set(CMAKE_CXX_STANDARD 17)
set(SOURCE_FILES src/main.cpp src/application.cpp src/file-io.cpp src/renderer.cpp src/logger.cpp)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

include_directories(${GLFW_INCLUDE_DIR} ${VULKAN_INCLUDE_DIR} ${GLM_INCLUDE_DIR} ${SPDLOG_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} ${GLFW_LIBRARY} ${VULKAN_LIBRARY})
