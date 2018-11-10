if (WIN32)
    set(GLFW_ROOT "${DEPENDENCY_DIR}/windows/glfw-3.2.1")
elseif (APPLE)
    # TODO: add macos dependencies
else()
    # TODO: add linux dependencies
endif()

find_path(
        GLFW_INCLUDE_DIR
        NAMES GLFW/glfw3.h
        PATHS "${GLFW_ROOT}/include"
)

find_library(
        GLFW_LIBRARY
        NAMES glfw3
        PATHS "${GLFW_ROOT}/lib-mingw-w64"
)
