# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.14.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.14.0.tgz'
  sha256 'bbdc407222eb60143a1b7c4604cc0e90ffc4fccfea75e5e5c288f700005b11b4'
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
