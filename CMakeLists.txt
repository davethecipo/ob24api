cmake_minimum_required(VERSION 2.8)
project(ob24api)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/modules)
find_package(OpenBabel2 REQUIRED)
INCLUDE_DIRECTORIES(${OPENBABEL2_INCLUDE_DIR})

MESSAGE( STATUS "openbabel include dir: " ${OPENBABEL2_INCLUDE_DIR})
MESSAGE( STATUS "openbabel 2 libraries " ${OPENBABEL2_LIBRARIES})

set(SOURCE_FILES main.cpp)
add_executable(ob24api ${SOURCE_FILES})
target_link_libraries(ob24api ${OPENBABEL2_LIBRARIES})