# Variables
CC = gcc            # Compiler
CFLAGS = -Wall -g   # Flags for warnings and debugging info
TARGET = project4   # Target executable name
SRC = project4.c    # Source file

# Default rule (builds the project)
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean rule (removes compiled files)
clean:
	rm -f $(TARGET) *.o

# Run rule (to run the program after compiling)
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run