class TarPaint < Formula
  include Language::Python::Virtualenv

  desc "natthphong application"
  homepage "https://github.com/natthphong/tar_paint"
  url "https://files.pythonhosted.org/packages/d5/61/3d77e5c85ae270779d333c94178a7fe549def45b03ea18b08eed6868302a/tar_paint-0.1.0.tar.gz"
  sha256 "5571b88d5e27f388ef88cf898fc346726b141fadab137bd28ee5c97cd4e753d0"

  depends_on "python@3.8"


  def install
    virtualenv_install_with_resources
    bin.install_symlink libexec/"bin/tar_paint"
  end

  test do
    system "#{bin}/tar_paint", "--version"
  end
end
