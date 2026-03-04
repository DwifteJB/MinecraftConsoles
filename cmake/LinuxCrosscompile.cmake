set(CMAKE_SYSTEM_NAME Windows)

set(CMAKE_C_COMPILER clang-cl)
set(CMAKE_CXX_COMPILER clang-cl)
set(CMAKE_LINKER lld-link)

set(CMAKE_C_COMPILER_FRONTEND_VARIANT MSVC)
set(CMAKE_CXX_COMPILER_FRONTEND_VARIANT MSVC)

add_compile_options(/winsysroot /opt/msvc --target=x86_64-pc-windows-msvc -fms-compatibility -fms-extensions -fdelayed-template-parsing)
add_link_options(/winsysroot:/opt/msvc)

#set(CMAKE_RC_COMPILE_OBJECT "<CMAKE_RC_COMPILER> /I /opt/msvc/kits/10/include/10.0.26100.0/shared <DEFINES> /fo<OBJECT> <SOURCE>")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
