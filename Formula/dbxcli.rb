class Dbxcli < Formula
  desc "A command line client for Dropbox built using the Go SDK"
  homepage "https://github.com/dropbox/dbxcli"
  url "https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-darwin-amd64"
  sha256 "1149a2aa6a89829c6d540d04cc1db8cf5bb27e3d8b0ec6b32d830a6818bd7573"

  def install
    system "mv dbxcli-darwin-amd64 dbxcli"
    bin.install "dbxcli"
  end

  test do
    system "#{bin}/dbxcli", "--help"
  end
end
