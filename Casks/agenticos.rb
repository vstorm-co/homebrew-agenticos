cask "agenticos" do
  version "1.69.0"
  on_arm do
    sha256 "0e7f0333cbf8a06e90725c91d570e9a1a2c74ab4d31490de432c5d9ce865d0b1"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.69.0/AgenticOS_1.69.0_aarch64.dmg"
  end
  on_intel do
    sha256 "d60f5a37ce035205b81cd65464690f77735cc85d898b708ddcc74dc52cff9cb9"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.69.0/AgenticOS_1.69.0_x64.dmg"
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
