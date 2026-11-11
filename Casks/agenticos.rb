cask "agenticos" do
  version "1.64.0"
  on_arm do
    sha256 "37f8acbab8cc368b16f0e9d55cfaaaa74ad36dbafa68e27a961a7ef31fabbd8e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.64.0/AgenticOS_1.64.0_aarch64.dmg"
  end
  on_intel do
    sha256 "6a08c71f84e00ed944cdbb44f8b98a9289c6ab8f0cf924d9890cd8d462e57e63"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.64.0/AgenticOS_1.64.0_x64.dmg"
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
