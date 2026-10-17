# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.17.2'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.17.2.tgz'
  sha256 '0cc52a2413e1ece265989dc175fb24f1e5853e57ff5fea2cca6350f48529be22'
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
