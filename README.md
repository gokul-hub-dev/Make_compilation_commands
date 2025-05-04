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

### 🧱 Minimal Full Example
```c
cmake_minimum_required(VERSION 3.10)
project(MyProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(MyProject main.cpp)
```

---

### 🧱 Full Example
```c
cmake_minimum_required(VERSION 3.10)
project(MyProject)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set include directories (for headers)
include_directories(include)

# Set library directories (if you're linking external libs)
link_directories(${CMAKE_SOURCE_DIR}/libs)

# Source files
set(SOURCES
    src/main.cpp
    src/foo.cpp
)

# Option 1: Build a binary (executable)
add_executable(MyExecutable ${SOURCES})

# Option 2: Build a static library
add_library(MyStaticLib STATIC ${SOURCES})

# Option 3: Build a shared library
add_library(MySharedLib SHARED ${SOURCES})

# Link external libraries to your executable
# Example: linking to pthread and a custom lib called "mylib"
target_link_libraries(MyExecutable pthread mylib)

# Set output directories (optional)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
```
