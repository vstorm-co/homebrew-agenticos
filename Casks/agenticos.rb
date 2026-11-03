cask "agenticos" do
  version "1.38.2"
  on_arm do
    sha256 "0c87f281e3f6a2b85f786b5e1a4a4b17a3336af4766da3e25e291cf58ba4911c"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.2/AgenticOS_1.38.2_aarch64.dmg"
  end
  on_intel do
    sha256 "f2e30bdec55ede704ed1cf8cb2cfaedfb3dbcf0a350ed020668520270e4b487a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.2/AgenticOS_1.38.2_x64.dmg"
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
