# typed: false
# frozen_string_literal: true

class Zedx < Formula
  desc 'Boilerplate generator for Zed Editor extensions.'
  homepage 'https://github.com/tahayvr/zedx'
  version '0.9.0'
  url 'https://registry.npmjs.org/zedx/-/zedx-0.9.0.tgz'
  sha256 '074162eaf938b8f92f332cc01c245b43b69e1c9881e222e8b9cda4ad603c0483'
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
