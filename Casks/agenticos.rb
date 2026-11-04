cask "agenticos" do
  version "1.47.0"
  on_arm do
    sha256 "69d4ea0aec3cf4316ec428d3003c6b466d9b8b979650a7fe02ab7ef44c89018c"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.0/AgenticOS_1.47.0_aarch64.dmg"
  end
  on_intel do
    sha256 "c2f01dbace1d8846bd98b0b6a8751612ce02b5cf4fa8d176179b526b6dcb937d"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.0/AgenticOS_1.47.0_x64.dmg"
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
