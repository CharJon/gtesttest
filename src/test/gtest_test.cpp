#include <gtest/gtest.h>

#include "basic.hpp"


// test if gtest is working properly
TEST(BasicTest, test1) {
    EXPECT_TRUE(true);
}

// test error throwing
TEST(BasicTest, test2) {
    try {
        throwsError();
    } catch (const std::runtime_error &e) {
        EXPECT_STREQ(e.what(), "Error");
    }
}

// test error throwing
TEST(BasicTest, test3) {
    ASSERT_ANY_THROW(throwsError());
}
