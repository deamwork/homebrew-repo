class NetworkCmdsKnali < Formula
  desc "BSD network commands specialized for macOS"
  homepage "https://opensource.apple.com/source/network_cmds/"
  url "https://opensource.apple.com/tarballs/network_cmds/network_cmds-480.tar.gz"
  version "480"
  sha256 "cd074e5d982bd4fa1f1cc65fc43c109fcf7ecad1ea3c5958490295e59f6560d8"

  bottle do
    root_url "https://repo.deam.work/bottles"
    sha256 "94309daac19efeea9ad9b5fc32b02a03a6444c8fe6822df3106820e63fdd77d3" => :mavericks
  end

  depends_on "ipip-ipdb-c"

  def install
    # Not used at all
    system "echo", "install"
  end

  def caveats; <<~EOS
    network commands requires root privileges so you will need to run `sudo ping` or do as below.

    sudo chown root:wheel `which ping`
    sudo chmod 4755 `which ping`

    Same procedure applies to ping6, traceroute, traceroute6 as well.
    You should be certain that you trust any software you grant root privileges.
  EOS
  end

  test do
    system sbin/"ping", "-t", "1", "127.0.0.1"
  end
end
