file(GLOB_RECURSE src_files CONFIGURE_DEPENDS 
    src/*.cpp
    include/*.h
    include/*.hpp
)

add_executable(${ProjectName}
    MANUAL_FINALIZATION
    ${src_files}
)