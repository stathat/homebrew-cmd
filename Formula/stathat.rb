class Stathat < Formula
  desc "Command-line interface to StatHat"
  homepage "https://www.stathat.com"
  url "https://github.com/stathat/cmd/releases/download/v0.2.12/stathat_0.2.12_darwin_amd64.tar.gz"
  version "0.2.12"
  sha256 "7b94a6a8e91f286dde74d2a540f4ec1525e2371e01b9574018bc3692991690ed"

  def install
    bin.install "stathat"
  end
end
