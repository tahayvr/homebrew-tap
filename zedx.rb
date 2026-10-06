# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.15.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.15.0.tgz'
  sha256 'c4eac7d2e8c15b2c48bab3b9488634c97fba775441833e1ed0cfd2cef7e7300d'
  license 'Apache-2.0'

  depends_on 'node'

  def install
    system 'npm', 'install', *std_npm_args
    bin.install_symlink libexec.glob('bin/*')
  end

  test do
    assert_match 'The CLI toolkit for Zed Editor.', shell_output("#{bin}/zedx --help")
  end
end
