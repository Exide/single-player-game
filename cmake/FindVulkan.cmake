if (WIN32)
    set(VULKAN_ROOT "${DEPENDENCY_DIR}/windows/vulkan-1.1.85.0")
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
elseif (APPLE)
    set(VULKAN_ROOT "${DEPENDENCY_DIR}/macos/vulkan-1.2.182.0")
    find_path(
            VULKAN_INCLUDE_DIR
            NAMES vulkan/vulkan.h
            PATHS ${VULKAN_ROOT}/include
    )

    find_library(
            VULKAN_LIBRARY
            NAMES vulkan
            PATHS ${VULKAN_ROOT}/lib ${VULKAN_ROOT}/bin
    )
else()
    # TODO: add linux dependencies
endif()
