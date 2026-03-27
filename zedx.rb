# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'Boilerplate generator for Zed Editor extensions.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.6.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.6.0.tgz'
  sha256 '1d507e80c3e10eb32e7a5bb3bc911b3caae1913b1b38bbb9a9460c86ecbfd07a'
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
