cask "agenticos" do
  version "1.56.3"
  on_arm do
    sha256 "2066082ecbfcb9ad53fec5d919828ff7709c6ce76950d960828c6620bf0ba283"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.3/AgenticOS_1.56.3_aarch64.dmg"
  end
  on_intel do
    sha256 "bda8805f140b1cea410d3a735683caba94086b81cc24353aed4f782478798fbf"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.3/AgenticOS_1.56.3_x64.dmg"
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
