list(APPEND ANGLE_DEFINITIONS ANGLE_PLATFORM_LINUX USE_SYSTEM_EGL)
include(linux.cmake)

if (USE_OPENGL)
    # Enable GLSL compiler output.
    list(APPEND ANGLE_DEFINITIONS ANGLE_ENABLE_GLSL)
endif ()

if (USE_ANGLE_EGL OR ENABLE_WEBGL)
    list(APPEND ANGLE_SOURCES
        ${gl_backend_sources}

        ${angle_system_utils_sources_linux}
        ${angle_system_utils_sources_posix}

        ${angle_dma_buf_sources}

        ${libangle_gl_egl_dl_sources}
        ${libangle_gl_egl_sources}
        ${libangle_gl_sources}

        ${libangle_gpu_info_util_sources}
        ${libangle_gpu_info_util_linux_sources}
    )

    list(APPEND ANGLE_DEFINITIONS
        ANGLE_ENABLE_OPENGL
    )

endif ()

# Vulkan backend
if(USE_VULKAN)
    find_package(Vulkan REQUIRED)
    
    list(APPEND ANGLE_SOURCES
        ${angle_vulkan_backend_sources}
        ${angle_translator_lib_spirv_sources}
        ${angle_spirv_builder_sources}
    )

    list(APPEND ANGLE_DEFINITIONS
        ANGLE_ENABLE_VULKAN
        VK_USE_PLATFORM_XCB_KHR
        VK_USE_PLATFORM_XLIB_KHR
        VK_USE_PLATFORM_WAYLAND_KHR
    )

    list(APPEND ANGLEGLESv2_LIBRARIES
        Vulkan::Vulkan
    )
endif()

