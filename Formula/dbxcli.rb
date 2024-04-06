class Dbxcli < Formula
  desc "Command-line client for Dropbox"
  homepage "https://github.com/dropbox/dbxcli"
  license "MIT"

  if OS.mac?
    url "https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-darwin-amd64"
    sha256 "1149a2aa6a89829c6d540d04cc1db8cf5bb27e3d8b0ec6b32d830a6818bd7573"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-linux-amd64"
    sha256 "3ff6e29675095063a5ba7101115cf7f809f3deddf14998ac61bf7a0330d736cb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-linux-arm"
    sha256 "806584e4758e59d753c1d7ed0fe97a7ae43fec0240c3bf4d388360bb51daf346"
  end

  def install
    bin.install "dbxcli-#{OS.mac? ? "darwin" : "linux"}-#{Hardware::CPU.arm? ? "arm" : "amd64"}" => "dbxcli"
  end

  test do
    system "#{bin}/dbxcli", "--version"
  end
end
