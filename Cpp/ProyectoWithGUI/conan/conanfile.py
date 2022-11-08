from conans import ConanFile

class SmartSystemTemplate(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    requires = ("openssl/1.0.2s",
                "boost/1.69.0",
                "mysql-connector-cpp/8.0.16@smartSys/testing",
                "rapidjson/1.1.0")
    generators = "visual_studio"
    default_options = {"openssl:shared": True}

    def imports(self):
        dst = "../bin"

        if self.settings.arch == "x86_64":
            dst += "/x64/{}".format(self.settings.build_type)
        elif self.settings.arch == "x86":
            dst += "/Win32/{}".format(self.settings.build_type)

        self.copy("*.dll", dst=dst, src="bin")
        self.copy("*.pdb", dst=dst, src="bin")

