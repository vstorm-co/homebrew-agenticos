cask "agenticos" do
  version "1.47.2"
  on_arm do
    sha256 "d16aee87e50fd2e3ca4b0f3c5a0545e2c796eaeced86cbffcaa4eeaef0ffd228"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.2/AgenticOS_1.47.2_aarch64.dmg"
  end
  on_intel do
    sha256 "7145b17dfa2f3dc9f54ec828d99b9ebd6cb24de349ba72a18aaedaf483d4474a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.2/AgenticOS_1.47.2_x64.dmg"
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
