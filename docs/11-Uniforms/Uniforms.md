# Uniforms in OpenGL

Uniforms are a way to get data from the CPU (C++) into our Shader, so we can use it like a variable.

Uniforms are set *per draw*.

In C++ we need to use the uniform **before** we bind the shader that will use it.

```cpp
// Binding the shader
glUseProgram(shader);

// Retrieving the location of the uniform
int location = glGetUniformLocation(shader, "u_Color");
ASSERT(location != -1);

// passing to the shader
glUniform4f(location, 1.0f, 0.5f, 0.4f, 1.0f);
```