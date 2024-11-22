CC = gcc
CFLAGS = -lGL -lGLU -lglut -lm
OUTPUT = build/run

main: src/main.c
	$(CC) $? $(CFLAGS) -o $(OUTPUT)

run:
	export DISPLAY=:0 && ./$(OUTPUT)

clean:
	rm -f $(OUTPUT)