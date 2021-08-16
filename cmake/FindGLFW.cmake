if (WIN32)
    set(GLFW_ROOT "${DEPENDENCY_DIR}/windows/glfw-3.2.1")
    find_library(
            GLFW_LIBRARY
            NAMES glfw3
            PATHS "${GLFW_ROOT}/lib-mingw-w64"
    )
elseif (APPLE)
    set(GLFW_ROOT "${DEPENDENCY_DIR}/macos/glfw-3.3.4")
    find_library(
            GLFW_LIBRARY
            NAMES glfw3
            PATHS "${GLFW_ROOT}/lib-x86_64"
    )
else()
    # TODO: add linux dependencies
endif()

find_path(
        GLFW_INCLUDE_DIR
        NAMES GLFW/glfw3.h
        PATHS "${GLFW_ROOT}/include"
)
