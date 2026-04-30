# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.13.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.13.0.tgz'
  sha256 '332b9a07ec30158c636c795c58090691af06e8c9bc7a2ca9431003defb1fe873'
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
