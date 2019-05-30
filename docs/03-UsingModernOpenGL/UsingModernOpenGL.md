# Using Modern OpenGL in C++

[Video](https://www.youtube.com/watch?v=H2E3yO0J7TM&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&t=0s&index=4)

Windows uses DirectX and you should be using that in Windows, it is native after all.

OpenGL will relies in GPU Drivers from your GPU Card Company, their drivers.

In order to use OpenGL functionalities, let's get the function declarations from the Driver's dll and link them in our project, for that we are going to use another library **GLEW**. We could also use another one called [GLAD](https://glad.dav1d.de/)

## GLEW

[glew.sourceforge.net/](http://glew.sourceforge.net/)

The OpenGL Extension Wrangler Library (GLEW) is a cross-platform open-source C/C++ extension loading library. GLEW provides efficient run-time mechanisms for determining which OpenGL extensions are supported on the target platform. OpenGL core and extension functionality is exposed in a single header file. GLEW has been tested on a variety of operating systems, including Windows, Linux, Mac OS X, FreeBSD, Irix, and Solaris.

It provides the OpenGL, symbol declaration, constants in a header file for us.

You need to create a valid OpenGL context and call `glewInit()` to initialize the extension entry points.
(See GLEW Documentation for more details)