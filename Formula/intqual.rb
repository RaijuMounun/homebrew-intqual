class Intqual < Formula
  desc "A network diagnostic tool"
  homepage "https://github.com/RaijuMounun/intqual"
  version "1.2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RaijuMounun/intqual/releases/download/v1.2.0/intqual-macos-aarch64"
      sha256 "103212e760ea557a249a28178caa9b1aed3dc8a889b880e005dcdc137768f2c6"
    else
      url "https://github.com/RaijuMounun/intqual/releases/download/v1.2.0/intqual-macos-amd64"
      sha256 "be730b368236946d87c28c9feb04f54af03a619763803fb2a4d8d9cc9a305b3e"
    end
  elsif OS.linux?
    url "https://github.com/RaijuMounun/intqual/releases/download/v1.2.0/intqual-linux-amd64"
    sha256 "b5115b828ea73a02ef67ded0d7e915d90c13f0636667c78947417595ffdd692b"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "intqual-macos-aarch64" => "intqual"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "intqual-macos-amd64" => "intqual"
    elsif OS.linux?
      bin.install "intqual-linux-amd64" => "intqual"
    end
  end
end
