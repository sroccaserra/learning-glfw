
glfw-app: main.o glad_gl.o
	g++ main.o glad_gl.o -o glfw-app -lglfw -lglew -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo

main.o: src/main.cpp
	g++ -c src/main.cpp -Ideps

glad_gl.o: deps/glad_gl.c
	gcc -c deps/glad_gl.c -Ideps

clean:
	rm -f *.o glfw-app
