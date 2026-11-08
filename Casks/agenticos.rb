cask "agenticos" do
  version "1.58.1"
  on_arm do
    sha256 "6df621845705e16ef8d66f9c347a155f32300846eb0f3f0c46d53f10b34779cf"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.1/AgenticOS_1.58.1_aarch64.dmg"
  end
  on_intel do
    sha256 "be3aef669e3cf820884cced271b84bb06e58fa22a91380d2a46c0e8f012c70d1"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.1/AgenticOS_1.58.1_x64.dmg"
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
