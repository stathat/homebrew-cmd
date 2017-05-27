class Stathat < Formula
  desc "Command-line interface to stathat.com"
  homepage "https://stathat.com"
  url "https://github.com/stathat/cmd/archive/v0.2.2.tar.gz"
  sha256 "e8bc6e307f8ccedeb5d576d70891d5229ee6605355ff901cb6804147a5cc65b8"

  head "https://github.com/stathat/cmd.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/stathat/cmd/").install "stathat"

    system "go", "build", "-o", bin/"stathat", "-a", "github.com/stathat/cmd/stathat"
  end

  test do
    system "#{bin}/stathat", "version"
    system "#{bin}/stathat", "ping"
  end
end
