class Preflight < Formula
  desc "App Store Review Scanner CLI - catch rejection reasons before Apple does"
  homepage "https://preflightlaunch.com"
  url "https://registry.npmjs.org/@preflight/cli/-/cli-0.1.0.tgz"
  sha256 "PLACEHOLDER_AFTER_NPM_PUBLISH"
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
