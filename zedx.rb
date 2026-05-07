# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.13.1'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.13.1.tgz'
  sha256 'c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f'
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
