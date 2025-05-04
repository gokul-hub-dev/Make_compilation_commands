## ✅ Basic Requirements for a CMakeLists.txt
**Minimum CMake version**
```c
cmake_minimum_required(VERSION 3.10)
```
Ensures compatibility with newer CMake features.

---

### Project name and language
```c
project(MyProjectName LANGUAGES CXX)
```
Sets the name of your project and tells CMake you're using C++.

---

### C++ standard (optional but recommended)
```c
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
```

---

### Add an executable (or library)
```c
add_executable(MyExecutable main.cpp)
```

---

##🧱 Minimal Full Example
```c
cmake_minimum_required(VERSION 3.10)
project(MyProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(MyProject main.cpp)
```
