class MtrKnali < Formula
  desc "'traceroute' and 'ping' in a single tool"
  homepage "https://www.bitwizard.nl/mtr/"
  url "https://github.com/traviscross/mtr/archive/v0.92.tar.gz"
  version "0.92"
  sha256 "568a52911a8933496e60c88ac6fea12379469d7943feb9223f4337903e4bc164"

  bottle do
    root_url "https://repo.kosaka.moe/bottles"
    sha256 "db61ae38057487e499ac730b2a2aa2b8437b04828c06aa946c6418ffccc70806" => :mavericks
  end

  depends_on "ipip-ipdb-c"

  def install
    # Not used at all
    system "echo", "install"
  end

  def caveats; <<~EOS
    mtr requires root privileges so you will need to run `sudo mtr` or do as below.

    sudo chown root:wheel `which mtr-packet`
    sudo chmod 4755 `which mtr-packet`

    You should be certain that you trust any software you grant root privileges.
  EOS
  end

  test do
    system sbin/"mtr", "--help"
  end
end
