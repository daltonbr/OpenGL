# Vertex Arrays

* Vertex Attribute Objects (VAOs)

This concept is more specific to OpenGL.
It a way to bind vertex buffers with certain specifications, layouts.

Vertex Arrays are similar to Vertex Buffers.
It's a way to bind vertex buffers with certain specifications, for layouts.

Vertex Arrays allow us to bind vertex specifications to vertex buffers.

```cpp
// Generate and Bind a VAO - Vertex Array Object
unsigned int vao;
glGenVertexArrays(1, &vao);
glBindVertexArray(vao);
```

## Interesting read

[Porting Source To Linux]https://developer.nvidia.com/sites/default/files/akamai/gamedev/docs/Porting%20Source%20to%20Linux.pdf)