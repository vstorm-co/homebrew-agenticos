cask "agenticos" do
  version "1.89.0"
  on_arm do
    sha256 "0377e09392c0ffd38ae632f2c67410a40f3870fe4dca72e2ca0f32bf08bae5fe"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.89.0/AgenticOS_1.89.0_aarch64.dmg"
  end
  on_intel do
    sha256 "9067540e94dedf92ab48bed49784c70b90d5cee5f791d8e225ddcd1b5e1b275f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.89.0/AgenticOS_1.89.0_x64.dmg"
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
