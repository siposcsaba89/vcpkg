include(CMakeFindDependencyMacro)
find_dependency(ZLIB)

# Find Vulkan dependencies if vulkan feature is enabled
if(@vulkan@)
    find_dependency(Vulkan REQUIRED)
    find_dependency(VulkanMemoryAllocator CONFIG REQUIRED)
    find_dependency(SPIRV-Tools-opt CONFIG REQUIRED)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/unofficial-angle-targets.cmake")
