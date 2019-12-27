class Dbxcli < Formula
  desc "A command line client for Dropbox built using the Go SDK"
  homepage "https://github.com/dropbox/dbxcli"
  
  def self.os

  end
  if OS.mac?
    url "https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-darwin-amd64"
    checksum = "1149a2aa6a89829c6d540d04cc1db8cf5bb27e3d8b0ec6b32d830a6818bd7573"
  else
    url "https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-linux-amd64"
    checksum = "3ff6e29675095063a5ba7101115cf7f809f3deddf14998ac61bf7a0330d736cb"
  end

  sha256 checksum

  def install
    if OS.mac?
      system "mv dbxcli-darwin-amd64 dbxcli"
    else
      system "mv dbxcli-linux-amd64 dbxcli"
    end
    bin.install "dbxcli"
  end

  test do
    system "#{bin}/dbxcli", "--help"
  end
end
