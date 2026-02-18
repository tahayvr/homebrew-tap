# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'Boilerplate generator for Zed Editor extensions.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.2.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.2.0.tgz'
  sha256 'eba19c18ebfa547e767a37a89c3cfc9c76941a26862888a5ba16a7997f97294a'
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
