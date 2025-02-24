option(CHAT_SERVER "Build Example" ON)

if (CHAT_SERVER)
    # 定义目标
    add_executable(Example example.cpp)

    # 链接 ${ProjectName} 库
    target_link_libraries(Example PUBLIC ${ProjectName})
endif()