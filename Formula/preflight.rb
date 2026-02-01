class Preflight < Formula
  desc "App Store Review Scanner CLI - catch rejection reasons before Apple does"
  homepage "https://preflightlaunch.com"
  url "https://registry.npmjs.org/preflightlaunch/-/preflightlaunch-0.1.0.tgz"
  sha256 "1350814ea14f15407fe86f3f8ca68f10d5aa644c177c804cf6f9d36a5d22b9da"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/preflight"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/preflight --version")
  end
end
