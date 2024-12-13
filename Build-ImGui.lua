-- Build-ImGui.lua
project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "off"

    targetdir ("%{wks.location}/Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir ("%{wks.location}/Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")
 
    files 
    {
        "imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imgstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h"
    }

    filter "system:windows"
    systemversion "latest"

    filter "configurations:Debug"
    runtime "Debug"
    symbols "On"

    filter "configurations:Release"
    runtime "Release"
    optimize "On"
    symbols "On"

    filter "configurations:Dist"
    runtime "Release"
    optimize "On"
    symbols "Off"
