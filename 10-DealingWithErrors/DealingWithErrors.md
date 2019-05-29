# Dealing with Errors in OpenGL

## Polling errors

The "old way" to get errors is with [glGetError](http://docs.gl/gl4/glGetError)

```glGetError``` return flags to errors

In ```glew.h``` we have the #define for the errors, that are specified in hexadecimal value. So we may construct a wrapper to get us better textual error messages.

```cpp
// some example of error codes from glew.h

#define GL_INVALID_ENUM 0x0500
#define GL_INVALID_VALUE 0x0501
#define GL_INVALID_OPERATION 0x0502
```

Here we have examples of helper functions to clear theses flags and display an error.

```cpp
static void GLCleanError()
{
	while (glGetError() != GL_NO_ERROR);
}

static void GLCheckError()
{
	while (GLenum error = glGetError())
	{
		std::cout << "[OpenGL Error] (" std::hex << error << std::dec << ")" << std::endl;
	}    
}
```

We can use them bt 'wrapping' the portion of the code that we want to verify for errors.

```cpp
GLCleanError();
glDrawElements(GL_TRIANGLES, 6, GL_INT, nullptr);
GLCheckError();

// These will throw at every frame an error 1280,
// which is equal to GL_INVALID_ENUM 0x0500

// A correct code would be:
//glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);

```

we need to poll this function to get all errors.

That is why we need to "reset" this flags.

## Callback instead of polling errors

So instead of polling, we can have a callback in OpenGL 4.3+ with [glDebugMessageCallback](http://docs.gl/gl4/glDebugMessageCallback).

glDebugMessageCallback — specify a callback to receive debugging messages from the GL

## Consideration for code in production

Calling ```glCheckError``` before/after every OpenGL function call, as well as logging these errors isn't something you'd want to do in release builds, only for debugging. Because of that for a *real* application I'd change the GLCall macro to be more like:

```cpp
#ifdef DEBUG
    #define GLCall(x) GLClearError(); x; ASSERT(GLLogCall(...))
#else
    #define GLCall(x) x
#endif
```