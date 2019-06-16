# Shader Abstraction

Since this is an OpenGL project oriented (not Game Engine oriented) we are taking an approach to not generate shader on-the-fly, since this is a complex topic and it's irrelevant to OpenGL.

For abstract shaders we need to do:

1. Parse the shader file
2. Bind/Unbind the shader
3. Set the Uniforms for the shader.
