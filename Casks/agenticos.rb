cask "agenticos" do
  version "1.80.0"
  on_arm do
    sha256 "0bd254f47fe96eccab20bd538803892d29ba42f146d88503089299270375e2b6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.80.0/AgenticOS_1.80.0_aarch64.dmg"
  end
  on_intel do
    sha256 "8ae591f15006ed0a2dbccf958b4c64f4a8b2f07891a35ac24a6d0f0e7f6a9bd1"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.80.0/AgenticOS_1.80.0_x64.dmg"
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
