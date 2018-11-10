if (WIN32)
    set(VULKAN_ROOT "${DEPENDENCY_DIR}/windows/vulkan-1.1.85.0")
elseif (APPLE)
    # TODO: add macos dependencies
else()
    # TODO: add linux dependencies
endif()

find_path(
        VULKAN_INCLUDE_DIR
        NAMES vulkan/vulkan.h
        PATHS ${VULKAN_ROOT}/Include
)

find_library(
        VULKAN_LIBRARY
        NAMES vulkan-1
        PATHS ${VULKAN_ROOT}/Lib ${VULKAN_ROOT}/Bin
)
