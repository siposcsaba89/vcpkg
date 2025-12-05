# Copyright (c) 2024 vcpkg
# Vulkan backend sources for ANGLE
# Manually created based on vulkan_backend.gni

# VMA implementation source (must be compiled with VMA_IMPLEMENTATION defined)
set(angle_vma_implementation_source
    ${CMAKE_CURRENT_BINARY_DIR}/vma_implementation.cpp
)

# Create VMA implementation file
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/vma_implementation.cpp
"// Auto-generated VMA implementation
#define VMA_IMPLEMENTATION
#define VMA_STATIC_VULKAN_FUNCTIONS 0
#define VMA_DYNAMIC_VULKAN_FUNCTIONS 1
#include <vk_mem_alloc.h>
")

set(angle_vulkan_backend_sources
    src/libANGLE/renderer/vulkan/AllocatorHelperPool.cpp
    src/libANGLE/renderer/vulkan/AllocatorHelperPool.h
    src/libANGLE/renderer/vulkan/BufferVk.cpp
    src/libANGLE/renderer/vulkan/BufferVk.h
    src/libANGLE/renderer/vulkan/CommandQueue.cpp
    src/libANGLE/renderer/vulkan/CommandQueue.h
    src/libANGLE/renderer/vulkan/CompilerVk.cpp
    src/libANGLE/renderer/vulkan/CompilerVk.h
    src/libANGLE/renderer/vulkan/ContextVk.cpp
    src/libANGLE/renderer/vulkan/ContextVk.h
    src/libANGLE/renderer/vulkan/DebugAnnotatorVk.cpp
    src/libANGLE/renderer/vulkan/DebugAnnotatorVk.h
    src/libANGLE/renderer/vulkan/DeviceVk.cpp
    src/libANGLE/renderer/vulkan/DeviceVk.h
    src/libANGLE/renderer/vulkan/DisplayVk.cpp
    src/libANGLE/renderer/vulkan/DisplayVk.h
    src/libANGLE/renderer/vulkan/DisplayVk_api.h
    src/libANGLE/renderer/vulkan/FenceNVVk.cpp
    src/libANGLE/renderer/vulkan/FenceNVVk.h
    src/libANGLE/renderer/vulkan/FramebufferVk.cpp
    src/libANGLE/renderer/vulkan/FramebufferVk.h
    src/libANGLE/renderer/vulkan/ImageVk.cpp
    src/libANGLE/renderer/vulkan/ImageVk.h
    src/libANGLE/renderer/vulkan/MemoryObjectVk.cpp
    src/libANGLE/renderer/vulkan/MemoryObjectVk.h
    src/libANGLE/renderer/vulkan/MemoryTracking.cpp
    src/libANGLE/renderer/vulkan/MemoryTracking.h
    src/libANGLE/renderer/vulkan/OverlayVk.cpp
    src/libANGLE/renderer/vulkan/OverlayVk.h
    src/libANGLE/renderer/vulkan/PersistentCommandPool.cpp
    src/libANGLE/renderer/vulkan/PersistentCommandPool.h
    src/libANGLE/renderer/vulkan/ProgramExecutableVk.cpp
    src/libANGLE/renderer/vulkan/ProgramExecutableVk.h
    src/libANGLE/renderer/vulkan/ProgramPipelineVk.cpp
    src/libANGLE/renderer/vulkan/ProgramPipelineVk.h
    src/libANGLE/renderer/vulkan/ProgramVk.cpp
    src/libANGLE/renderer/vulkan/ProgramVk.h
    src/libANGLE/renderer/vulkan/QueryVk.cpp
    src/libANGLE/renderer/vulkan/QueryVk.h
    src/libANGLE/renderer/vulkan/RenderTargetVk.cpp
    src/libANGLE/renderer/vulkan/RenderTargetVk.h
    src/libANGLE/renderer/vulkan/RenderbufferVk.cpp
    src/libANGLE/renderer/vulkan/RenderbufferVk.h
    src/libANGLE/renderer/vulkan/SamplerVk.cpp
    src/libANGLE/renderer/vulkan/SamplerVk.h
    src/libANGLE/renderer/vulkan/SecondaryCommandBuffer.cpp
    src/libANGLE/renderer/vulkan/SecondaryCommandBuffer.h
    src/libANGLE/renderer/vulkan/SecondaryCommandPool.cpp
    src/libANGLE/renderer/vulkan/SecondaryCommandPool.h
    src/libANGLE/renderer/vulkan/SemaphoreVk.cpp
    src/libANGLE/renderer/vulkan/SemaphoreVk.h
    src/libANGLE/renderer/vulkan/ShaderInterfaceVariableInfoMap.cpp
    src/libANGLE/renderer/vulkan/ShaderInterfaceVariableInfoMap.h
    src/libANGLE/renderer/vulkan/ShaderVk.cpp
    src/libANGLE/renderer/vulkan/ShaderVk.h
    src/libANGLE/renderer/vulkan/ShareGroupVk.cpp
    src/libANGLE/renderer/vulkan/ShareGroupVk.h
    src/libANGLE/renderer/vulkan/Suballocation.cpp
    src/libANGLE/renderer/vulkan/Suballocation.h
    src/libANGLE/renderer/vulkan/SurfaceVk.cpp
    src/libANGLE/renderer/vulkan/SurfaceVk.h
    src/libANGLE/renderer/vulkan/SyncVk.cpp
    src/libANGLE/renderer/vulkan/SyncVk.h
    src/libANGLE/renderer/vulkan/TextureVk.cpp
    src/libANGLE/renderer/vulkan/TextureVk.h
    src/libANGLE/renderer/vulkan/TransformFeedbackVk.cpp
    src/libANGLE/renderer/vulkan/TransformFeedbackVk.h
    src/libANGLE/renderer/vulkan/UtilsVk.cpp
    src/libANGLE/renderer/vulkan/UtilsVk.h
    src/libANGLE/renderer/vulkan/VertexArrayVk.cpp
    src/libANGLE/renderer/vulkan/VertexArrayVk.h
    src/libANGLE/renderer/vulkan/VkImageImageSiblingVk.cpp
    src/libANGLE/renderer/vulkan/VkImageImageSiblingVk.h
    src/libANGLE/renderer/vulkan/VulkanSecondaryCommandBuffer.cpp
    src/libANGLE/renderer/vulkan/VulkanSecondaryCommandBuffer.h
    src/libANGLE/renderer/vulkan/android/vk_android_utils.cpp
    src/libANGLE/renderer/vulkan/android/vk_android_utils.h
    src/libANGLE/renderer/vulkan/spv_utils.cpp
    src/libANGLE/renderer/vulkan/spv_utils.h
    src/libANGLE/renderer/vulkan/vk_cache_utils.cpp
    src/libANGLE/renderer/vulkan/vk_cache_utils.h
    src/libANGLE/renderer/vulkan/vk_caps_utils.cpp
    src/libANGLE/renderer/vulkan/vk_caps_utils.h
    src/libANGLE/renderer/vulkan/vk_command_buffer_utils.h
    src/libANGLE/renderer/vulkan/vk_format_table_autogen.cpp
    src/libANGLE/renderer/vulkan/vk_format_utils.cpp
    src/libANGLE/renderer/vulkan/vk_helpers.cpp
    src/libANGLE/renderer/vulkan/vk_helpers.h
    src/libANGLE/renderer/vulkan/vk_wrapper.h
    src/libANGLE/renderer/vulkan/vk_mem_alloc_wrapper.cpp
    src/libANGLE/renderer/vulkan/vk_mem_alloc_wrapper.h
    ${angle_vma_implementation_source}
    src/libANGLE/renderer/vulkan/vk_internal_shaders_autogen.cpp
    src/libANGLE/renderer/vulkan/vk_internal_shaders_autogen.h
    src/libANGLE/renderer/vulkan/vk_mandatory_format_support_table_autogen.cpp
    src/libANGLE/renderer/vulkan/vk_ref_counted_event.cpp
    src/libANGLE/renderer/vulkan/vk_ref_counted_event.h
    src/libANGLE/renderer/vulkan/vk_renderer.cpp
    src/libANGLE/renderer/vulkan/vk_renderer.h
    src/libANGLE/renderer/vulkan/vk_resource.cpp
    src/libANGLE/renderer/vulkan/vk_resource.h
    src/libANGLE/renderer/vulkan/vk_utils.cpp
    src/libANGLE/renderer/vulkan/vk_utils.h
    src/libANGLE/renderer/vulkan/vk_wrapper.h
    src/libANGLE/renderer/vulkan/vk_mem_alloc_wrapper.cpp
    src/libANGLE/renderer/vulkan/vk_mem_alloc_wrapper.h
)

# Platform-specific sources
if(is_linux)
    list(APPEND angle_vulkan_backend_sources
        src/libANGLE/renderer/vulkan/linux/DeviceVkLinux.cpp
        src/libANGLE/renderer/vulkan/linux/DeviceVkLinux.h
        src/libANGLE/renderer/vulkan/linux/DisplayVkLinux.cpp
        src/libANGLE/renderer/vulkan/linux/DisplayVkLinux.h
        src/libANGLE/renderer/vulkan/linux/DisplayVkOffscreen.cpp
        src/libANGLE/renderer/vulkan/linux/DisplayVkOffscreen.h
        src/libANGLE/renderer/vulkan/linux/DmaBufImageSiblingVkLinux.cpp
        src/libANGLE/renderer/vulkan/linux/DmaBufImageSiblingVkLinux.h
        src/libANGLE/renderer/vulkan/linux/display/DisplayVkSimple.cpp
        src/libANGLE/renderer/vulkan/linux/display/DisplayVkSimple.h
        src/libANGLE/renderer/vulkan/linux/display/WindowSurfaceVkSimple.cpp
        src/libANGLE/renderer/vulkan/linux/display/WindowSurfaceVkSimple.h
        src/libANGLE/renderer/vulkan/linux/headless/DisplayVkHeadless.cpp
        src/libANGLE/renderer/vulkan/linux/headless/DisplayVkHeadless.h
        src/libANGLE/renderer/vulkan/linux/headless/WindowSurfaceVkHeadless.cpp
        src/libANGLE/renderer/vulkan/linux/headless/WindowSurfaceVkHeadless.h
    )
endif()

if(is_win)
    list(APPEND angle_vulkan_backend_sources
        src/libANGLE/renderer/vulkan/win32/DisplayVkWin32.cpp
        src/libANGLE/renderer/vulkan/win32/DisplayVkWin32.h
        src/libANGLE/renderer/vulkan/win32/WindowSurfaceVkWin32.cpp
        src/libANGLE/renderer/vulkan/win32/WindowSurfaceVkWin32.h
    )
endif()

if(is_mac)
    list(APPEND angle_vulkan_backend_sources
        src/libANGLE/renderer/vulkan/mac/DisplayVkMac.h
        src/libANGLE/renderer/vulkan/mac/DisplayVkMac.mm
        src/libANGLE/renderer/vulkan/mac/IOSurfaceSurfaceVkMac.h
        src/libANGLE/renderer/vulkan/mac/IOSurfaceSurfaceVkMac.mm
        src/libANGLE/renderer/vulkan/mac/WindowSurfaceVkMac.h
        src/libANGLE/renderer/vulkan/mac/WindowSurfaceVkMac.mm
    )
endif()

# SPIR-V translator sources (needed for Vulkan)
set(angle_translator_lib_spirv_sources
    src/compiler/translator/spirv/BuildSPIRV.cpp
    src/compiler/translator/spirv/BuildSPIRV.h
    src/compiler/translator/spirv/BuiltinsWorkaround.cpp
    src/compiler/translator/spirv/BuiltinsWorkaround.h
    src/compiler/translator/spirv/OutputSPIRV.cpp
    src/compiler/translator/spirv/OutputSPIRV.h
    src/compiler/translator/spirv/TranslatorSPIRV.cpp
    src/compiler/translator/spirv/TranslatorSPIRV.h
    src/compiler/translator/tree_ops/spirv/ClampGLLayer.cpp
    src/compiler/translator/tree_ops/spirv/ClampGLLayer.h
    src/compiler/translator/tree_ops/spirv/EmulateAdvancedBlendEquations.cpp
    src/compiler/translator/tree_ops/spirv/EmulateAdvancedBlendEquations.h
    src/compiler/translator/tree_ops/spirv/EmulateDithering.cpp
    src/compiler/translator/tree_ops/spirv/EmulateDithering.h
    src/compiler/translator/tree_ops/spirv/EmulateFragColorData.cpp
    src/compiler/translator/tree_ops/spirv/EmulateFragColorData.h
    src/compiler/translator/tree_ops/spirv/EmulateFramebufferFetch.cpp
    src/compiler/translator/tree_ops/spirv/EmulateFramebufferFetch.h
    src/compiler/translator/tree_ops/spirv/EmulateYUVBuiltIns.cpp
    src/compiler/translator/tree_ops/spirv/EmulateYUVBuiltIns.h
    src/compiler/translator/tree_ops/spirv/FlagSamplersWithTexelFetch.cpp
    src/compiler/translator/tree_ops/spirv/FlagSamplersWithTexelFetch.h
    src/compiler/translator/tree_ops/spirv/ReswizzleYUVOps.cpp
    src/compiler/translator/tree_ops/spirv/ReswizzleYUVOps.h
    src/compiler/translator/tree_ops/spirv/RewriteInterpolateAtOffset.cpp
    src/compiler/translator/tree_ops/spirv/RewriteInterpolateAtOffset.h
    src/compiler/translator/tree_ops/spirv/RewriteR32fImages.cpp
    src/compiler/translator/tree_ops/spirv/RewriteR32fImages.h
    src/compiler/translator/tree_ops/spirv/RewriteSamplerExternalTexelFetch.cpp
    src/compiler/translator/tree_ops/spirv/RewriteSamplerExternalTexelFetch.h
)

# Common SPIR-V utility sources (needed for Vulkan)
set(angle_spirv_builder_sources
    src/common/spirv/angle_spirv_utils.cpp
    src/common/spirv/spirv_instruction_builder_autogen.cpp
    src/common/spirv/spirv_instruction_builder_autogen.h
    src/common/spirv/spirv_instruction_parser_autogen.cpp
    src/common/spirv/spirv_instruction_parser_autogen.h
    src/common/spirv/spirv_types.h
)
