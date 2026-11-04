cask "agenticos" do
  version "1.40.0"
  on_arm do
    sha256 "6d28281581747ec0a7f8b8242707511fdae6fc0360a29b74555e1a46c47d71fe"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.40.0/AgenticOS_1.40.0_aarch64.dmg"
  end
  on_intel do
    sha256 "a657bc8a3ece17a5f2829be4c339396b438e69ce64fb34b990d8ea04db04608a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.40.0/AgenticOS_1.40.0_x64.dmg"
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
