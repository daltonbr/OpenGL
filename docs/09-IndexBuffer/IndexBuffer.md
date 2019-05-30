# Index Buffers

* We can use this buffer to reuse vertices and optimise memory usage.
* We draw the triangles with these vertices in a counter-clockwise order (right-hand rule)

## Creating the buffer

It's mandatory to use ```unsigned int``` when dealing with these buffers.

```cpp
// index buffer object
unsigned int ibo;
glGenBuffers(1, &ibo);
glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
glBufferData(GL_ARRAY_BUFFER, 6 * sizeof(unsigned int), indices, GL_STATIC_DRAW);
```

## Drawcall

When issue draw calls now with: ```glDrawElements```
and not ```glDrawArrays;``

e.g.  
```glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);```  
instead of```glDrawArrays(GL_TRIANGLES, 0, 3);```  
