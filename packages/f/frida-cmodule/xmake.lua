package("frida-cmodule")
    set_description("Support to Build Frida CModule")
    set_license("wxWindows Library Licence")
    set_homepage("https://github.com/frida/frida")
    set_kind("library")

    on_load(function (package)
        package:set("installdir", path.join(os.scriptdir(), package:plat(), package:arch()))
    end)

    on_fetch(function (package)
        local result = {}
        result.includedirs = package:installdir("include")
        return result
    end)
