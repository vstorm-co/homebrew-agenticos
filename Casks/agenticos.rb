cask "agenticos" do
  version "1.65.0"
  on_arm do
    sha256 "409c44f988d937730f7b97d07b2a0e10c7061645c8c28070eca035b616d5175e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.65.0/AgenticOS_1.65.0_aarch64.dmg"
  end
  on_intel do
    sha256 "0b58f7a3b864659e8a6ca16c51e06ef94e0d55968405b0d82efac532ce56d8dd"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.65.0/AgenticOS_1.65.0_x64.dmg"
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
