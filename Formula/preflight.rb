class Preflight < Formula
  desc "App Store Review Scanner CLI - catch rejection reasons before Apple does"
  homepage "https://preflightlaunch.com"
  url "https://registry.npmjs.org/preflightlaunch/-/preflightlaunch-1.0.7.tgz"
  sha256 "0b6d28c9f2fce901bfd0e0c1b7e23fba41e0310e3d7b97153bd205baab00d43d"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/preflight"
  end

  test do
    assert_match "1.0.7", shell_output("#{bin}/preflight --version")
  end
end
