CC = gcc
CFLAGS = -Wall

# List of source files
SRCS = func_call.c main.c

# List of object files (generated from source files)
OBJS = $(SRCS:.c=.o)

# The name of the final executable
TARGET = my_program

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

