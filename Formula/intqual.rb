class Intqual < Formula
  desc "A network diagnostic tool"
  homepage "https://github.com/RaijuMounun/intqual"
  version "1.3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RaijuMounun/intqual/releases/download/v1.3.0/intqual-macos-aarch64"
      sha256 "95eeeb1468c5d762885c17b20810a43a41319a00fa0698e8cd074ecd442ff212"
    else
      url "https://github.com/RaijuMounun/intqual/releases/download/v1.3.0/intqual-macos-amd64"
      sha256 "bc52b7423ab977d341953df851a680314f9905c60101b90f20ec4f2e79f893e5"
    end
  elsif OS.linux?
    url "https://github.com/RaijuMounun/intqual/releases/download/v1.3.0/intqual-linux-amd64"
    sha256 "64207b08aa9824c6153cdfc78824965cf711c6fe592424376545008f008dc748"
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
