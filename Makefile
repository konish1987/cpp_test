CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -O2
TARGET = noisy_app
SRC = main.cpp module1.cpp module2.cpp
OBJ = $(SRC:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJ)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f $(OBJ) $(TARGET)

# Download Catch2 header if not present
catch.hpp:
	curl -L https://github.com/catchorg/Catch2/releases/download/v2.13.10/catch.hpp -o catch.hpp

test: test_main.cpp catch.hpp module1.cpp module2.cpp
	$(CXX) $(CXXFLAGS) test_main.cpp -o test && ./test
