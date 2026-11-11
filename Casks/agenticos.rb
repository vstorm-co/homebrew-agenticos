cask "agenticos" do
  version "1.64.2"
  on_arm do
    sha256 "2bf037d0f870c6a58a3641c9afb60520de516f05210f59726643ec5a88662934"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.64.2/AgenticOS_1.64.2_aarch64.dmg"
  end
  on_intel do
    sha256 "0af2727a326e64a685c71c29fe3303990d9b124d7b74083bad68a2086564ee4c"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.64.2/AgenticOS_1.64.2_x64.dmg"
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
