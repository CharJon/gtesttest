add_test([=[BasicTest.test1]=]  /Users/jonas/Projects/gtesttest/cmake-build-debug-gcc-13/src/test/gtest_test [==[--gtest_filter=BasicTest.test1]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[BasicTest.test1]=]  PROPERTIES WORKING_DIRECTORY /Users/jonas/Projects/gtesttest SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY)
add_test([=[BasicTest.test2]=]  /Users/jonas/Projects/gtesttest/cmake-build-debug-gcc-13/src/test/gtest_test [==[--gtest_filter=BasicTest.test2]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[BasicTest.test2]=]  PROPERTIES WORKING_DIRECTORY /Users/jonas/Projects/gtesttest SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY)
add_test([=[BasicTest.test3]=]  /Users/jonas/Projects/gtesttest/cmake-build-debug-gcc-13/src/test/gtest_test [==[--gtest_filter=BasicTest.test3]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[BasicTest.test3]=]  PROPERTIES WORKING_DIRECTORY /Users/jonas/Projects/gtesttest SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY)
set(  gtest_test_TESTS BasicTest.test1 BasicTest.test2 BasicTest.test3)
