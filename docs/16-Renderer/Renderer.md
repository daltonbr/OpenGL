# Writing a basic Renderer in OpenGL

The Renderer is like a **factory**, it keeps everything together, organized, debugable and running smoothly.

The Renderer class can be a Singleton/Staticm this is up to debate. Some could argue that we may need more than one instance of the Renderer among other fair points.

In order to make our ```Draw()``` request we need to provide to the Renderer the following:

* Vertex Array (already have the **VertexBuffer** bound to this one)
* **Index Buffer** (assuming that we want to draw all these indices, not supporting partial buffers for the moment)
* **Shader**

## Note about **Unbind** in OpenGL

```Unbind``` is not really mandatory in OpenGL, because after drawing anything we need to bind it.
It could be useful for Debug purposes and we may even trim it out for release builds. Normally it's just a waste of performance.

## Note about **materials**

For the moment we are binding the shader directly in the renderer, normally we would bind a **material** which is essentially a shader combined with all the relevant **uniforms**.
