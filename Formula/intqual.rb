class Intqual < Formula
  desc "Dual-layer unprivileged network latency analyzer and observability tool"
  homepage "https://github.com/RaijuMounun/intqual"
  version "1.0.9"

  on_macos do
    on_arm do
      url "https://github.com/RaijuMounun/intqual/releases/download/v1.0.9/intqual-macos-aarch64"
      sha256 "748c49b206511987846aa3de7f59f98d2f5941cbe3ce71de4285a30d0b623984"
    end
    on_intel do
      url "https://github.com/RaijuMounun/intqual/releases/download/v1.0.9/intqual-macos-amd64"
      sha256 "7c067a02c4a8096a1a40e270122178f54433e58aa5e20e5fab46a40aa0421e70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RaijuMounun/intqual/releases/download/v1.0.9/intqual-linux-amd64"
      sha256 "4af36efa268ea78f4eb2af340fda195867d291b9e3b839f0c35581230186963d"
    end
  end

  def install
    os = OS.mac? ? "macos" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "amd64"
    
    bin.install "intqual-#{os}-#{arch}" => "intqual"
  end
end
