cmake_minimum_required(VERSION 3.13)
set(CMAKE_CXX_STANDARD 20)

project(testgtest)

if (NOT CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "" FORCE)
endif ()

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
## set(CMAKE_CXX_FLAGS_DEBUG "-g -fopenmp")
## set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "") # Enable/Disable output of compile commands during generation

### This Project #####
add_executable(testgtest
        src/main.cpp
)

target_include_directories(testgtest
        PRIVATE
        ${PROJECT_SOURCE_DIR}/include
)

# gtest
option(TESTS "Build the tests" ON)
if (TESTS)
    enable_testing()
    include(GoogleTest)
    add_subdirectory("${PROJECT_SOURCE_DIR}/extern/gtest")

    # This macro has the testname as the first parameter and the type as the second.
    # All further arguments have to be .cpp files containing the relevant sources
    macro(add_test TESTNAME TEST_TYPE)
        # create an executable in which the tests will be stored
        add_executable(${TESTNAME} ${ARGN})
        # link the Google test infrastructure, mocking library, and a default main function to
        # the test executable.  Remove g_test_main if writing your own main function.
        target_include_directories(${TESTNAME} PRIVATE ${PROJECT_SOURCE_DIR}/include)

        if ("${TEST_TYPE}" STREQUAL "basic")
            target_link_libraries(${TESTNAME} gtest gmock gtest_main)
        else ()
            message(SEND_ERROR "Test type unknown, got ${TEST_TYPE}.")
        endif ()

        # gtest_discover_tests replaces gtest_add_tests,
        # see https://cmake.org/cmake/help/v3.10/module/GoogleTest.html for more options to pass to it
        gtest_discover_tests(${TESTNAME}
                # set a working directory so your project root so that you can find test data via paths relative to the project root
                WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
                PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "${PROJECT_DIR}"
        )
        set_target_properties(${TESTNAME} PROPERTIES FOLDER tests)
    endmacro()

    # ADD TEST DIRECTORIES HERE
    add_subdirectory(${PROJECT_SOURCE_DIR}/src/test)
endif ()

## install
message(STATUS ${CMAKE_INSTALL_PREFIX})
