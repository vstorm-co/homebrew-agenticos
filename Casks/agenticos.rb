cask "agenticos" do
  version "1.47.1"
  on_arm do
    sha256 "381b6119c6e4abb199c56f182cea4e6e9d83e310df7e5a51965754ebca6dc397"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.1/AgenticOS_1.47.1_aarch64.dmg"
  end
  on_intel do
    sha256 "5927d5334c2bac36d2012296283e475f6c64f7b062c65bc6eb4bd4cf88248974"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.1/AgenticOS_1.47.1_x64.dmg"
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
