set(GLM_ROOT "${DEPENDENCY_DIR}/common/glm-0.9.9.3")

find_path(
        GLM_INCLUDE_DIR
        NAMES glm/glm.hpp
        PATHS ${GLM_ROOT}
)
