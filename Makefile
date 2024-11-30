CC			=	cc
CFLAGS		=	-Wall -Wextra -Werror
BUILD_DIR	=	build

# List of problem directories
#PROBLEMS = \
#		   problems/array/two_sum\

# Default target: build al problems
all: $(PROBLEMS)

# Build each problem
$(PROBLEMS):
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/$(notdir $@) $@/main.c $@/*.c

# Clean build artifacts
clean:
	rm -rf $(BUILD_DIR)
