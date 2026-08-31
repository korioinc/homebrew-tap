class MulticaSetup < Formula
  include Language::Python::Virtualenv

  desc "Declarative workspace resource synchronization for Multica"
  homepage "https://github.com/korioinc/multica-setup"
  url "https://github.com/korioinc/multica-setup/archive/refs/tags/0.1.2.tar.gz"
  sha256 "e0f344bf237489b2f6ee3daab9380b27d6bd27feae2790d06189d1403c4df89f"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multica-setup --version")
  end
end
