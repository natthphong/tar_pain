class TarPaint < Formula
  include Language::Python::Virtualenv

  desc "natthphong application"
  homepage "https://github.com/natthphong/tar_paint"
  url "https://github.com/natthphong/tar_paint/archive/v0.1.0.tar.gz"
  sha256 "SHA256_CHECKSUM_OF_YOUR_TAR_GZ"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/tar_paint", "--version"
  end
end
