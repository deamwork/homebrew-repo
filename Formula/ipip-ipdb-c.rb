class IpipIpdbC < Formula
  desc "IPIP.net IPDB query tool"
  homepage "https://github.com/ipipdotnet/ipdb-c"
  url "https://github.com/traviscross/mtr/archive/v0.92.tar.gz"
  version "20190513"
  sha256 "568a52911a8933496e60c88ac6fea12379469d7943feb9223f4337903e4bc164"

  bottle do
    root_url "http://deb.kosaka.moe/bottles"
    sha256 "3eb0c32e29633929867d88a6dd563c825642960313b7ca7484befed8af1dbfc0" => :mavericks
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
