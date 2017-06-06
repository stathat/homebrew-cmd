class Stathat < Formula
  desc "Command-line interface to StatHat"
  homepage "https://www.stathat.com"
  url "https://github.com/stathat/cmd/releases/download/v0.2.9/stathat_0.2.9_darwin_amd64.tar.gz"
  version "0.2.9"
  sha256 "b9da8061adb14f3a5da2e67a90ffabf8f4baddaa804a73014dec597edb8677e7"

  def install
    bin.install "stathat"
  end
end
