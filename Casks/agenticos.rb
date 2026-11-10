cask "agenticos" do
  version "1.62.2"
  on_arm do
    sha256 "82abff861ef6f8985f2cf7847f88729a7e6cd661379b8d2c09d1cbbdd5237016"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.2/AgenticOS_1.62.2_aarch64.dmg"
  end
  on_intel do
    sha256 "58edb736ae1355e397322dd31b3b7d34b05993951fe05d9b3c53208275653302"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.2/AgenticOS_1.62.2_x64.dmg"
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
