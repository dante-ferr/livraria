# Makefile for Java project

# Variables
SRC_DIR := src/main/java
BIN_DIR := bin
PACKAGE := com.example
MAIN_CLASS := $(PACKAGE).Main
SOURCES := $(shell find $(SRC_DIR) -name "*.java")

# Default target
all: build

# Compile the project
build:
	@mkdir -p $(BIN_DIR)
	javac -d $(BIN_DIR) $(SOURCES)

# Run the project
run: build
	java -cp $(BIN_DIR) $(MAIN_CLASS)

# Clean build artifacts
clean:
	rm -rf $(BIN_DIR)

.PHONY: all build run clean
