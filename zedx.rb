# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.10.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.10.0.tgz'
  sha256 '5cfc9f2c7adfed33d41f54faec3c6e2e335bea773f7cd122809ad2ad93773542'
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
