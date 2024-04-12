#include <gtest/gtest.h>


int throwsError() {
    throw std::runtime_error("Error");
}

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