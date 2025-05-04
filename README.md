## ✅ Basic Requirements for a CMakeLists.txt
**Minimum CMake version**
```c
cmake_minimum_required(VERSION 3.10)
```
Ensures compatibility with newer CMake features.

---

Project name and language

project(MyProjectName LANGUAGES CXX)
Sets the name of your project and tells CMake you're using C++.

C++ standard (optional but recommended)

cmake
Copy
Edit
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
Add an executable (or library)

cmake
Copy
Edit
add_executable(MyExecutable main.cpp)
🧱 Minimal Full Example
cmake
Copy
Edit
cmake_minimum_required(VERSION 3.10)
project(MyProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(MyProject main.cpp)
