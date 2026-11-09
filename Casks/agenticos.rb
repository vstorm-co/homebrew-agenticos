cask "agenticos" do
  version "1.61.2"
  on_arm do
    sha256 "8ae0b0d38454c47cd06367078ea5028f6dbf8b8ebb6cab57e99c7eb18d99e749"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.2/AgenticOS_1.61.2_aarch64.dmg"
  end
  on_intel do
    sha256 "c7be18ac37618d18b6f38141c4521a052904c2d479fa82c5204cf1c4648bec1f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.2/AgenticOS_1.61.2_x64.dmg"
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
