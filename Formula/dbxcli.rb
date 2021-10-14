class Dbxcli < Formula
  desc "Command-line client for Dropbox built using the Go SDK"
  homepage "https://github.com/dropbox/dbxcli"

  if OS.mac?
    @@os = "darwin"
    checksum = "1149a2aa6a89829c6d540d04cc1db8cf5bb27e3d8b0ec6b32d830a6818bd7573"
  elsif OS.linux?
    @@os = "linux"
    checksum = "3ff6e29675095063a5ba7101115cf7f809f3deddf14998ac61bf7a0330d736cb"
  end

  url "https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-#{@@os}-amd64"
  sha256 checksum

  def install
    mv "dbxcli-#{@@os}-amd64", "dbxcli"
    bin.install "dbxcli"
  end

  test do
    system "#{bin}/dbxcli", "--help"
  end
end
