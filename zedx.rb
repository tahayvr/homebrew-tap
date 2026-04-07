# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.12.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.12.0.tgz'
  sha256 'e962ca3a95a6c9a54998a971405a3c3eda2d00c9dec3f9e17808b6e095b687bc'
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
