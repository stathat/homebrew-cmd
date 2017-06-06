class Stathat < Formula
  desc "Command-line interface to StatHat"
  homepage "https://www.stathat.com"
  url "https://github.com/stathat/cmd/releases/download/v0.2.10/stathat_0.2.10_darwin_amd64.tar.gz"
  version "0.2.10"
  sha256 "b0cf1fd13eed7818fb05abea625067ea88cc811fa68c2fefc79d876dcee6cdf6"

  def install
    bin.install "stathat"
  end
end
