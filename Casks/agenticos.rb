cask "agenticos" do
  version "1.49.0"
  on_arm do
    sha256 "7baf2cac94553a30721086e9ffc89df1e27785b4f563f601d0114cb852bb6555"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.49.0/AgenticOS_1.49.0_aarch64.dmg"
  end
  on_intel do
    sha256 "36ad2bdf146656e5cdbdeb0022621fa91c6876049cb5968b866ab212503b5234"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.49.0/AgenticOS_1.49.0_x64.dmg"
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
