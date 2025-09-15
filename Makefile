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
