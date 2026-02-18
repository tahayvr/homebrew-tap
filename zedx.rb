# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'Boilerplate generator for Zed Editor extensions.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.2.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.2.0.tgz'
  sha256 '1f4c76caa6bb37989339c43c585917833a71423f'
  license 'Apache-2.0'

  depends_on 'node'

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match 'Boilerplate generator for Zed Editor extensions.',
shell_output("#{bin}/zedx --help")
  end
end
