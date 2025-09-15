// test_main.cpp
#define CATCH_CONFIG_MAIN
#include "catch.hpp"

#include "module1.cpp"
#include "module2.cpp"

TEST_CASE("Sample test for module1", "[module1]") {
    REQUIRE(1 + 1 == 2);
}

TEST_CASE("Sample test for module2", "[module2]") {
    REQUIRE(2 * 2 == 4);
}
