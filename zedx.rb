# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.16.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.16.0.tgz'
  sha256 '14c1a3c38e5923ba2a22e351883b8629187e7cd60f455d5045e9f98c281fc5a7'
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
