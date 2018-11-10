if (WIN32)
    set(GLM_ROOT "${DEPENDENCY_DIR}/windows/glm-0.9.9.3")
elseif (APPLE)
    # TODO: add macos dependencies
else()
    # TODO: add linux dependencies
endif()

find_path(
        GLM_INCLUDE_DIR
        NAMES glm/glm.hpp
        PATHS ${GLM_ROOT}
)
