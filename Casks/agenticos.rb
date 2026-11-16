cask "agenticos" do
  version "1.78.0"
  on_arm do
    sha256 "8e788a0eef136bd4e127d0e0ca33c6546405c1856a28fabd6fe4de94cbd9bc1f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.78.0/AgenticOS_1.78.0_aarch64.dmg"
  end
  on_intel do
    sha256 "2070abfde496dcc6958efd1832e31acbd670ed9be11e0ab0724a943d12be910e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.78.0/AgenticOS_1.78.0_x64.dmg"
  end
  name "AgenticOS"
  desc "Build, run and govern your company's AI agents"
  homepage "https://github.com/vstorm-co/agenticos"
  app "AgenticOS.app"

  # The release is signed but not notarized, so Gatekeeper would refuse the
  # quarantined copy Homebrew leaves behind.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/AgenticOS.app"]
  end
end
