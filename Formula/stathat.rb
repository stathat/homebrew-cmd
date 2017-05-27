class Stathat < Formula
  desc "Command-line interface to stathat.com"
  homepage "https://stathat.com"
  url "https://github.com/stathat/cmd/archive/v0.2.2.tar.gz"
  sha256 "ff790f6b8c2246db30fc9a4c6c7ab1abe2491ed8012fd0925e0197628f268399"

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
