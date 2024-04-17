#include <iostream>
#include "basic.hpp"

int main(int /*argc*/, char ** /*argv*/) {
    std::cout << "Hello, World!" << std::endl;

    try {
        throwsError();
    } catch (const std::runtime_error &e) {
        std::cout << e.what() << std::endl;
    }

    return 0;
}