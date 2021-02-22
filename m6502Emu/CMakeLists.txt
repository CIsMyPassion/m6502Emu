cmake_minimum_required(VERSION 3.7)

project(m6502Emu)

if(MSVC)
	add_compile_options(/MP)
	add_compile_options(/W4 /wd4201 /WX)
else()
	add_compile_options(-W -Wall -Werror)
endif()

file(GLOB_RECURSE m6502Emu_src
	"src/*.h"
	"src/*.cpp"
)

source_group("src" FILES $ {m6502Emu_src})

add_library(m6502Emu ${m6502Emu_src})

target_include_directories(m6502Emu PUBLIC "${PROJECT_SOURCE_DIR}/src/include")
