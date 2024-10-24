project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    includedirs
    {
        "./",
        "../imgui/"
    }

    files
    {
        -- Guizmo
        "ImGuizmo.h",
        "ImGuizmo.cpp"
    }

    filter "system:windows"
    systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"