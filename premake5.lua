workspace "OpenGL"
    architecture "x64"

    configurations { "Debug", "Release" }

    -- e.g. Debug-windows-x86_64
    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "OpenGL"
    location "%{prj.name}"
    kind "ConsoleApp"
    language "C++"
    targetdir ("%{prj.name}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{prj.name}/bin-int/" .. outputdir .. "/%{prj.name}")

    defines
    {
        -- required to compiled glew static library
        "GLEW_STATIC"
    }

    files
    {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    filter "system:windows"
        cppdialect "C++17"
         -- Sets <RuntimeLibrary> to "MultiThreaded" (on) or "MultiThreadedDLL" (off)
        staticruntime "off"
        systemversion "latest"

        includedirs
        {
            --"%{prj.name}/Dependencies/glfw-3.3.bin.WIN32/include",
            "%{prj.name}/Dependencies/glfw-3.3.bin.WIN64/include",
            "%{prj.name}/Dependencies/GLEW/include"
        }

        libdirs 
        {
            --"%{prj.name}/Dependencies/GLEW/bin/Release/Win32",  --dynamic x86
            --"%{prj.name}/Dependencies/GLEW/lib/Release/Win32",  --static x86
            --"%{prj.name}/Dependencies/GLEW/bin/Release/x64",    --dynamic x86
            "%{prj.name}/Dependencies/GLEW/lib/Release/x64",      --static x64
            --"%{prj.name}/Dependencies/glfw-3.3.bin.WIN32/lib-vc2017"
            "%{prj.name}/Dependencies/glfw-3.3.bin.WIN64/lib-vc2017"
        }

        defines
        {
            "PLATFORM_WINDOWS"
        }

        links
        {
            --"glew32",   --glew32.lib
            "glew32s",  -- glew32s.lib;
            "glfw3",    -- glfw3.lib; 
            "opengl32", -- opengl32.lib;
            "User32",   -- User32.lib;
            "Gdi32",    -- Gdi32.lib;
            "Shell32"   -- Shell32.lib
        }

    filter "system:Mac"
        cppdialect "C++17"

        defines
        {
            "PLATFORM_MAC"
        }

        links
        {
            "Cocoa.framework"
            -- libdirs { os.findlib("")}
            --"Dependencies/GLEW/lib/Release/Win32",
            --"Dependencies/glfw-3.3.bin.WIN64/lib-vc2015"
        }

    --filter "system:Unix"

    filter "configurations:Debug*"
        defines { "DEBUG" }
        symbols "on"
        runtime "Debug"

    filter "configurations:Release*"
        defines { "RELEASE" }
        symbols "on"
        optimize "on"
        runtime "Release"

-- Old settings from the 'Original' VS2017 solution

-- C/C++
    -- Preprocessor
        -- GLEW_STATIC;    -- we are using static GLEW libraries
-- C/C++
    -- General/AdditionalIncludeDirectories
        -- $(SolutionDir)Dependencies\glfw-3.3.bin.WIN64\include;
        -- $(SolutionDir)Dependencies\GLEW\include
    -- Preprocessor
        -- GLEW_STATIC;_MBCS;%(PreprocessorDefinitions)

-- Linker
    -- General/AdditionalLibraryDirectories
        -- $(SolutionDir)Dependencies\GLEW\lib\Release\Win32;
        -- $(SolutionDir)Dependencies\glfw-3.3.bin.WIN64\lib-vc2015
    -- Input/AdditionalDependencies 
        -- glew32s.lib;
        -- glfw3.lib;
        -- opengl32.lib;
        -- User32.lib;
        -- Gdi32.lib;
        -- Shell32.lib