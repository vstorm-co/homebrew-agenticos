cask "agenticos" do
  version "1.83.0"
  on_arm do
    sha256 "9807af7cc06da25b56d422351c95f196f900c929d901e756cd537ac522767c8a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.83.0/AgenticOS_1.83.0_aarch64.dmg"
  end
  on_intel do
    sha256 "c3ce76cc6ce913da901d1192cf06a5f80a6bbc66d733496a87bee5b49f7a15a7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.83.0/AgenticOS_1.83.0_x64.dmg"
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
