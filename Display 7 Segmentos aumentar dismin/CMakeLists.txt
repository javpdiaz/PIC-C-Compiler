cmake_minimum_required(VERSION 3.20)
project(Display_7_Segmentos_aumentar_dismin C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(Display_7_Segmentos_aumentar_dismin
        aumentar_disminuir.c
        aumentar_disminuir.h)
