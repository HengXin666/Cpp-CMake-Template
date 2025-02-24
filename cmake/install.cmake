# 递归查找, 然后结果存储在`srcs`
file(GLOB_RECURSE SRC_FILES CONFIGURE_DEPENDS 
    src/*.cpp
)

add_library(${ProjectName} STATIC ${SRC_FILES})
add_library(${ProjectName}::${ProjectName} ALIAS ${ProjectName})

# 导入第三方库
include(cmake/includeLib.cmake)

# 包含头文件目录
include_directories(include)

target_include_directories(${ProjectName} PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

target_compile_features(${ProjectName} PUBLIC cxx_std_20)