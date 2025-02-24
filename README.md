# Cpp-CMake-Template

这个是一个跨平台的现代的C++ CMake 项目模版.

提供了以下支持:
- `include`/`src`: 您可以在其中编写您的项目的内容, 其中`include`存放`.h/.hpp`头文件, `src`中存放`.cpp`源文件, 他们会被编译为 **静态库**, 以便在`examples`/`ctest`中使用.

- `examples`: 您可以编写实例, 只需要在`./examples`文件夹中, 创建一个子文件夹, 并在子文件夹中, 编写一个`CMake`子项目即可. (示例: [examples/Example/CMakeLists.txt](./examples/Example/CMakeLists.txt))

- `ctest`: 只需要在`./ctest`文件夹中创建`.cpp`文件, 然后就可以使用 [doctest](https://github.com/doctest/doctest) 来编写测试用例. (当然您直接书写`main`函数也没问题). (示例: [tests/ExamplesTest.cpp](./tests/ExamplesTest.cpp))

- `Github workflows`:
    - `ArchLinux.yaml`: 每次push到Github仓库后, 会自动使用Arch镜像, 以最新的gcc/clang版本对项目编译后执行`ctest`.