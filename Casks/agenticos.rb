cask "agenticos" do
  version "1.63.0"
  on_arm do
    sha256 "15e6763785f6b4876e3c55a3f4107f40d38280c268956ebb30552c532b685e21"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.63.0/AgenticOS_1.63.0_aarch64.dmg"
  end
  on_intel do
    sha256 "62fc83e4aba4d3013a8316997f34d00014f580f98a148d1c374a720aa69029b3"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.63.0/AgenticOS_1.63.0_x64.dmg"
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
