cask "agenticos" do
  version "1.58.2"
  on_arm do
    sha256 "30e6b82e12c3477f1e2f72f6aacd7ab127acd49d8e8d594a3b86ff024d7dbcfe"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.2/AgenticOS_1.58.2_aarch64.dmg"
  end
  on_intel do
    sha256 "a033922d3b5376e0f5c0f3ad716be2a387cbec2415d05b81e9e518081c5504d9"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.2/AgenticOS_1.58.2_x64.dmg"
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
