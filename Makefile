
glfw-app: main.o
	g++ main.o -o glfw-app -lglfw -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo

main.o:
	g++ -c main.cpp

clean:
	rm -f *.o glfw-app
