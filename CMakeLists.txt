cmake_minimum_required(VERSION 3.16)

set(ProjectName "HX-Cpp-CMake-Template")

project(${ProjectName}
    VERSION 0.0.1
    DESCRIPTION "HX-Cpp-CMake-Template"
    HOMEPAGE_URL "https://github.com/HengXin666/HX-Cpp-CMake-Template"
    LANGUAGES CXX
)

include(cmake/install.cmake)

if(CMAKE_PROJECT_NAME STREQUAL ${ProjectName})
    include(cmake/utils.cmake)
    include(cmake/config.cmake)
    include(cmake/develop.cmake)
    include(cmake/examples.cmake)
    include(cmake/tests.cmake)
else()
    include(cmake/config.cmake)
endif()