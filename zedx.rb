# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'Boilerplate generator for Zed Editor extensions.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.8.1'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.8.1.tgz'
  sha256 'fcf6b0089cf3eb92cc56e7f5e0d5975728a20b283143170ab85c854538152484'
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
