cask "agenticos" do
  version "1.92.0"
  on_arm do
    sha256 "cab92302e64e60e501d2d0209a2264b8093b2d82782a125ad4ac7563d5cab142"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.92.0/AgenticOS_1.92.0_aarch64.dmg"
  end
  on_intel do
    sha256 "0ae9e463e9b3d5fc2cdb5ddee79ce36e6ed67b5f997c9dceda6daf35f4be9554"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.92.0/AgenticOS_1.92.0_x64.dmg"
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
