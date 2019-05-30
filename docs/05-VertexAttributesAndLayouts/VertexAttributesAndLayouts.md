# Vertex Attributes and Layouts in OpenGL

Note: a vertex is not just its position, it can contain much more information than that, like position, texture coordinates, normals, colors, etc.

## Vertex Buffer

What is the **layout** of this buffer(vertex buffer)? Do we have texture coordinates, normal coordinates (UV's)?

## Vertex Attributes

Our shaders need to match the chosen layout.

Position, texture coordinates, normals, colors are all **attributes** and we will give then an index.

See more here [glVertexAttribPointer documentation](http://docs.gl/gl4/glVertexAttribPointer)