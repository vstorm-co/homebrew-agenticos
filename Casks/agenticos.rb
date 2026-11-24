cask "agenticos" do
  version "1.93.0"
  on_arm do
    sha256 "884a57296eeac8f4c7b5f330527fab862d4bd086365a2d62b4528dd7df6fc508"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.93.0/AgenticOS_1.93.0_aarch64.dmg"
  end
  on_intel do
    sha256 "03f5d1dd72b57881e869043963fe6885c166689b1634fda1ee0d121b22885f66"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.93.0/AgenticOS_1.93.0_x64.dmg"
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
