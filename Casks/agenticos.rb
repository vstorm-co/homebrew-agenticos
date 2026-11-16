cask "agenticos" do
  version "1.78.1"
  on_arm do
    sha256 "6173e4fc2f36d2660169bcffa6a62aef891069ee580203d55dffa05409eebfb3"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.78.1/AgenticOS_1.78.1_aarch64.dmg"
  end
  on_intel do
    sha256 "f06468f67a24d6f1c6376025d106d2585fa9efd027eb43716050c354310a2b52"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.78.1/AgenticOS_1.78.1_x64.dmg"
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
