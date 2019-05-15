class BindKnali < Formula
  desc "Implementation of the DNS protocols"
  homepage "https://www.isc.org/downloads/bind/"
  url "https://ftp.isc.org/isc/bind/9.14.1/bind-9.14.1.tar.gz"
  version "9.12.4-P1"
  sha256 "c3c7485d900a03271a9918a071c123e8951871a219f4c1c4383e37717f11db48"

  bottle do
    root_url "https://repo.deam.work/bottles"
    sha256 "3d2049535f9866a96bf6d0a6feb7e7f88b06d620587cfd40d1c2c39a56285df9" => :mavericks
  end

  depends_on "libidn2"
  depends_on "openssl"
  depends_on "ipip-ipdb-c"

  def install
    # Not used at all
    system "echo", "install"
  end

  test do
    system bin/"dig", "-v"
    system bin/"dig", "brew.sh"
  end
end
