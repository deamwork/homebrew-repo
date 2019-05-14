class IpipIpdbC < Formula
  desc "IPIP.net IPDB query tool"
  homepage "https://github.com/ipipdotnet/ipdb-c"
  url "https://github.com/traviscross/mtr/archive/v0.92.tar.gz"
  version "20190514"
  sha256 "568a52911a8933496e60c88ac6fea12379469d7943feb9223f4337903e4bc164"

  bottle do
    root_url "https://repo.kosaka.moe/bottles"
    sha256 "a5b74050682df8d8cbfbc582270d14b150a0cdee6ddad2a1669316a05017043f" => :mavericks
  end

  depends_on "json-c"

  def install
    # Not used at all
    system "echo", "install"
  end

  def caveats; <<~EOS
    You need to install a ipdb database to your system to use this set of tools
  EOS
  end
end
