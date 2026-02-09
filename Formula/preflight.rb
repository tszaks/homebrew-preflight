class Preflight < Formula
  desc "App Store Review Scanner CLI - catch rejection reasons before Apple does"
  homepage "https://preflightlaunch.com"
  url "https://registry.npmjs.org/preflightlaunch/-/preflightlaunch-1.0.6.tgz"
  sha256 "da1393c62cfd1640e656dad00af706fe15a2994b748399f38649627a1164ec25"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/preflight"
  end

  test do
    assert_match "1.0.6", shell_output("#{bin}/preflight --version")
  end
end
