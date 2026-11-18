cask "agenticos" do
  version "1.84.0"
  on_arm do
    sha256 "cbfe3d944ce7b3392b0087d1f316fa798560edcc3706a6b034c3629441aa99a7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.84.0/AgenticOS_1.84.0_aarch64.dmg"
  end
  on_intel do
    sha256 "ed2d92887884921152b1583639620b7de3173426b95a51124850d2b2c0845bea"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.84.0/AgenticOS_1.84.0_x64.dmg"
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
