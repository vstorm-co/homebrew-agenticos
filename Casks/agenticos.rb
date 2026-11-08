cask "agenticos" do
  version "1.58.0"
  on_arm do
    sha256 "4ff8b9134ea766cf150b1dd9601c20ef4a292f565e3336bb6c5d87d97ac50e59"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.0/AgenticOS_1.58.0_aarch64.dmg"
  end
  on_intel do
    sha256 "9ede4aad4926e41093e33bf859994e236ead0e046c1a2ec83a26f2b614600be2"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.0/AgenticOS_1.58.0_x64.dmg"
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
