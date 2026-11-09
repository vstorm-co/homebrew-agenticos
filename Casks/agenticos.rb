cask "agenticos" do
  version "1.60.0"
  on_arm do
    sha256 "72f61d71d4d53fcf89891d22feb152554c323f8f381f332123abf69022008627"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.0/AgenticOS_1.60.0_aarch64.dmg"
  end
  on_intel do
    sha256 "c66a49e3bfc842e6f0f09db45dd16f60828bdd542943cc49d7272e54f5d39c78"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.0/AgenticOS_1.60.0_x64.dmg"
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
