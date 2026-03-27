# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'Boilerplate generator for Zed Editor extensions.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.4.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.4.0.tgz'
  sha256 '36cd89504ef4fc5a8cfe3bb22307c20dcf82cf21790e1d2881ed2eb0843c3086'
  license 'Apache-2.0'

  depends_on 'node'

  def install
    system 'npm', 'install', *std_npm_args
    bin.install_symlink libexec.glob('bin/*')
  end

  test do
    assert_match 'Boilerplate generator for Zed Editor extensions.',
                 shell_output("#{bin}/zedx --help")
  end
end
