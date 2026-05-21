class Keypulse < Formula
  include Language::Python::Virtualenv

  desc "Local-first personal activity memory layer for macOS"
  homepage "https://github.com/Longfellow1/keypulse"
  url "https://github.com/Longfellow1/keypulse/archive/c93de2790603cf2562980643a8f6bd3c037ccf78.tar.gz"
  sha256 "92387f2a8f982a8e74788a54a097f77d895066d526c2260d3a0194b1f4b541ad"
  version "0.1.0-preview.1"
  license "Apache-2.0"
  head "https://github.com/Longfellow1/keypulse.git", branch: "main"

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    venv.pip_install "#{buildpath}[macos]"
    bin.install_symlink libexec/"bin/keypulse"
  end

  def caveats
    <<~EOS
      To initialize KeyPulse:
        keypulse install init

      Then grant macOS permissions when prompted:
        System Settings -> Privacy & Security -> Accessibility
        System Settings -> Privacy & Security -> Screen Recording

      Check status:
        keypulse install doctor
        keypulse doctor
    EOS
  end

  test do
    assert_match "KeyPulse", shell_output("#{bin}/keypulse --help")
    assert_match "install", shell_output("#{bin}/keypulse install --help")
  end
end
