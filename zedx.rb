# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'The CLI toolkit for Zed Editor.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.11.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.11.0.tgz'
  sha256 '4c30610f1b00153016491dda7bdd8b02cdae8ca19f21eb0c66581f208c4960ab'
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
