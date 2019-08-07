# OpenGL Series

This is my personal notes, from the course [OpenGL course](https://www.youtube.com/playlist?list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2) on Youtube by The Cherno!

* [01 - Welcome To OpenGL](./docs/01-WelcomeToOpenGL/WelcomeToOpenGL.md)
* [02 - Setting Up (Windows)](./docs/02-SettingUp/SettingUp.md)
* [03 - Using Modern OpenGL](./docs/03-UsingModernOpenGL/UsingModernOpenGL.md)
* [04 - Vertex Buffers](./docs/04-VertexBuffers/VertexBuffers.md)
* [05 - Vertex Attributes](./docs/05-VertexAttributesAndLayouts/VertexAttributesAndLayouts.md)
* [06 - Vertex Buffers](./docs/06-HowShadersWork/HowShadersWork.md)
* [07 - Writing Shader](./docs/07-WritingShader/WritingShader.md)
* [09 - Index Buffer](./docs/09-IndexBuffer/IndexBuffer.md)
* [10 - Dealing With Errors](./docs/10-DealingWithErrors/DealingWithErrors.md)
* [11 - Uniforms](./docs/11-Uniforms/Uniforms.md)
* [12 - VertexArrays - VAO](./docs/12-VertexArrays/VertexArrays.md)
* [15 - Shader Abstraction](./docs/15-ShaderAbstraction/ShaderAbstraction.md)
* [16 - Renderer](./docs/16-Renderer/Renderer.md)
* [19 - (MVP) Movel View Projection Matrix](./docs/19-ModelViewProjection/ModelViewProjection.md)

This project use [Premake5](https://github.com/premake/premake-core) to generate the Visual Studio 2017 solution. (OSX still in the works, check branch ```premake```)
Later on this series I update the project to Visual Studio 2019, but not test the premake generation yet)

## Libraries

We are using here

* [OpenGL Mathematics](https://glm.g-truc.net/) - handling maths in OpenGL
* [stb_image.h](https://github.com/nothings/stb/blob/master/stb_image.h) reading texture files

* [Dear ImGUI](https://github.com/ocornut/imgui) v.1.72b

## Interesting read

[Porting Source To Linux - NVIDIA slides](https://developer.nvidia.com/sites/default/files/akamai/gamedev/docs/Porting%20Source%20to%20Linux.pdf)
