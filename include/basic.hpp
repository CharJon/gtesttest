#ifndef TESTGTEST_BASIC_HPP
#define TESTGTEST_BASIC_HPP

#include <vector>


std::vector<int> throwsError() {
    throw std::runtime_error("Error");
    return {1, 2, 3, 4, 5};
}

#endif //TESTGTEST_BASIC_HPP
