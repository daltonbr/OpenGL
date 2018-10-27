# Welcome to OpenGL

[Video](https://www.youtube.com/watch?v=W3gAzLwfIP0&index=2&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&t=22s)

OpenGL is a Graphic API to access the Graphic Cards.
Other Graphics APIs are Metal, Vulkan, DirectX.

OpenGL is not a library, not an Engine, not a Framework.
It is just a **specification**, more like a C++ specification.

You don't download OpenGL, NVidia implements OpenGL in their drivers. Every fabricant has its own implementation of it.
It's has _open_ in the name, but it's not open source by default, it can be though.

It's cross-platform, Windows, Mac, Linux, Mobile. It's not better than other API just by that fact. Usually something that is native to a platform can be better, like Metal for iOS/OSX.

OpenGL and Vulkan are used in Android.

OpenGL is simpler to learn and it is cross-platform.

OpenGL Shader Language (GLSL)

There is Legacy OpenGL and Modern OpenGL. OpenGL exists since the 90's. In that time, the GPU's are not programmable as today.

Legacy OpenGL, it's easy to use, but it don't give us much control.
The big distinction between legacy and modern OpenGL is **Shaders**.

## Shaders

_Shaders_ are programs that runs on the GPU.

Everyone in the industry uses C++ / Windows / Visual Studio, so we are using that in this series.
