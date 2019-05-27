# How Shaders Work in OpenGL

Two of the most used shaders are **Vertex Shaders** and **Fragment Shaders**

Some other examples of shaders are Tesselation, Geometry and Compute.

Shaders are used when the GPU start "drawing" our data.

Vertex Shader comes first than Fragment Shader. To understand this exact order we need to understand better the **Render Pipeline**.

Shaders work as a State Machine in OpenGL. We needs to enable/disable these Shaders.

## Vertex Shaders

That gets called for every vertex that we have.
"Where do we want that vertex to be?"

## Fragment Shaders

a.k.a Pixel Fragment, (even though *fragment* and *shader* are a bit different in their terminologies).
Runs once for each pixel that needs to be rasterized.

"Which color does this pixel needs to be?"