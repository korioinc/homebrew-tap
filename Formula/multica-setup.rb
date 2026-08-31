class MulticaSetup < Formula
  include Language::Python::Virtualenv

  desc "Declarative workspace resource synchronization for Multica"
  homepage "https://github.com/korioinc/multica-setup"
  url "https://github.com/korioinc/multica-setup/archive/refs/tags/0.1.3.tar.gz"
  sha256 "f015e0e0f5ba3ab94d8df1f822c4e2c55d410cd28416509409efb1a84db82c82"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multica-setup --version")
  end
end
