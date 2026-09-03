class MulticaSetup < Formula
  include Language::Python::Virtualenv

  desc "Declarative workspace resource synchronization for Multica"
  homepage "https://github.com/korioinc/multica-setup"
  url "https://github.com/korioinc/multica-setup/archive/refs/tags/0.1.5.tar.gz"
  sha256 "da4f54ab179394ca51ff4333f77f2733a573f413073cb1503cb13a05e29b85be"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multica-setup --version")
  end
end
