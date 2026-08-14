class Ohnapse < Formula
  desc "Terminal-native AI coding agent"
  homepage "https://github.com/ohnapse"
  version "0.1.0-alpha.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.1/ohnapse_0.1.0-alpha.1_darwin_arm64.tar.gz"
      sha256 "46154df67ea931f34d9d81a74a6dbc3f78f75bc2384769cc127246e8ff429363"
    end
    on_intel do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.1/ohnapse_0.1.0-alpha.1_darwin_amd64.tar.gz"
      sha256 "353467984572ffcf6e55c169b337d31eacad7137979f8232196289637092a840"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.1/ohnapse_0.1.0-alpha.1_linux_arm64.tar.gz"
      sha256 "83930872a1f895b6fcdd43adb0b11e70b09d3e5d746bf72963c06b1d97084b62"
    end
    on_intel do
      url "https://github.com/ohnapse/public/releases/download/v0.1.0-alpha.1/ohnapse_0.1.0-alpha.1_linux_amd64.tar.gz"
      sha256 "2e5f6ec348e505793ba6b15ec812eb811c0d5264407f3128cdd0b16acb9116df"
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
