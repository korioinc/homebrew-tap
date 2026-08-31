class MulticaSetup < Formula
  include Language::Python::Virtualenv

  desc "Declarative workspace resource synchronization for Multica"
  homepage "https://github.com/korioinc/multica-setup"
  url "https://github.com/korioinc/multica-setup/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d1bc0d445544728f90606a26c8ac148bb10aca206d0f166246cbfa7262eb1998"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multica-setup --version")
  end
end
