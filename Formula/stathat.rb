class Stathat < Formula
  desc "Command-line interface to StatHat"
  homepage "https://www.stathat.com"
  url "https://github.com/stathat/cmd/releases/download/v0.2.11/stathat_0.2.11_darwin_amd64.tar.gz"
  version "0.2.11"
  sha256 "1079cf75a3bd482dbdca7e73b7d0ec68c7f1222ff74431fe37a06f5d00b76cab"

  def install
    bin.install "stathat"
  end
end
