cask "agenticos" do
  version "1.73.0"
  on_arm do
    sha256 "6523bf0b3ac97de60cbcabc42514feccc543307e7ba1b7b1ceca332b9b514f77"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.73.0/AgenticOS_1.73.0_aarch64.dmg"
  end
  on_intel do
    sha256 "55e98be5d0c731613a50779c041b0f21bb3c3507d73cc26ea7f49e5ee3fed570"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.73.0/AgenticOS_1.73.0_x64.dmg"
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
