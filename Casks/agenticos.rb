cask "agenticos" do
  version "1.86.1"
  on_arm do
    sha256 "3c72ee0e0c61cccdab5a2cba3ece2bd24cf44671a5e346a0b7618cf3bb1d2720"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.86.1/AgenticOS_1.86.1_aarch64.dmg"
  end
  on_intel do
    sha256 "f56db19c9e3a7d2d793d13fb0f71af6679d2d2bbb292122ebcc6670a083eeeb8"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.86.1/AgenticOS_1.86.1_x64.dmg"
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
