cask "agenticos" do
  version "1.81.0"
  on_arm do
    sha256 "25540a7a4846a7b709f0451d56c5d8cd459e478b78a0ca48d6825a8f598cae89"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.81.0/AgenticOS_1.81.0_aarch64.dmg"
  end
  on_intel do
    sha256 "53789be9bd051caee93acd5e9c63485d2c4d0ad1b189d9213349d8c6d2aa1ff6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.81.0/AgenticOS_1.81.0_x64.dmg"
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
