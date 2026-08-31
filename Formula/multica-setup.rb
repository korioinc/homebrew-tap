class MulticaSetup < Formula
  include Language::Python::Virtualenv

  desc "Declarative workspace resource synchronization for Multica"
  homepage "https://github.com/korioinc/multica-setup"
  url "https://github.com/korioinc/multica-setup/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b123aa5ed7deb3e167643fb3b9419a1f68e778ea745fb98be59421a719cf502c"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multica-setup --version")
  end
end
