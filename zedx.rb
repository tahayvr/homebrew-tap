# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'Boilerplate generator for Zed Editor extensions.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.7.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.7.0.tgz'
  sha256 'ed2397aa04618d8cf01e6e9d55e4ba539af2de8b4eed68d17fb8f246f5e1b473'
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
