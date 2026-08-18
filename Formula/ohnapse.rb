class Ohnapse < Formula
  desc "Terminal-native AI coding agent"
  homepage "https://github.com/ohnapse"
  version "0.1.0-alpha.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.2/ohnapse_0.1.0-alpha.2_darwin_arm64.tar.gz"
      sha256 "e6617a53b0867e59968ce29e6271bcb5e6d72674f81e08c3b9c8f9fcfe3e5c81"
    end
    on_intel do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.2/ohnapse_0.1.0-alpha.2_darwin_amd64.tar.gz"
      sha256 "af5fbfe43de9e60d408a1d5a7d1ce907d68f92cbff3bb9bea0d03d1a53fb8232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.2/ohnapse_0.1.0-alpha.2_linux_arm64.tar.gz"
      sha256 "f99560eb65b430e3db6a0ead9815072b7accc2c799a256aa8451a38dcc32ecb8"
    end
    on_intel do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.2/ohnapse_0.1.0-alpha.2_linux_amd64.tar.gz"
      sha256 "b447e9bbcffd1c14278bc92f900d05df47bbe14a3dec3fc7c5b1733c985bdedb"
    end
  end

  def install
    bin.install "ohnapse"
    bin.install_symlink bin/"ohnapse" => "oh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ohnapse version")
    assert_match version.to_s, shell_output("#{bin}/oh version")
  end
end
