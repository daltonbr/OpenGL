# Setting Up OpenGL and Creating a Windows in C++

To open a Window is platform specific, in Windows we use Win32.

We are use a platform to help us set up a Window, so we don't need to worry with that.

**GLFW** is a lightweight library that we are going to use. Create a Window, OpenGL context and some basic inputs.

## GLFW

[www.glfw.org/](http://www.glfw.org/)

GLFW is an Open Source, multi-platform library for OpenGL, OpenGL ES and Vulkan development on the desktop. It provides a simple API for creating windows, contexts and surfaces, receiving input and events.

GLFW is written in C and has native support for Windows, macOS and many Unix-like systems.

* Gives you a window and OpenGL context with just two function calls
* Support for OpenGL, OpenGL ES, Vulkan and related options, flags and extensions
* Support for multiple windows, multiple monitors, high-DPI and gamma ramps
* Support for keyboard, mouse, gamepad, time and window event input, via polling or callbacks

## Creating a VS Project

In Windows, we are going to use the pre-built binaries. We could also put the source code in a separated project and have it in there.
We are going to use the GLFW static library (`glfw3.lib`, from the `lib-vs2015` folder), not the dynamic ones.
