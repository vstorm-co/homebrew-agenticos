cask "agenticos" do
  version "1.82.1"
  on_arm do
    sha256 "dc79270ca2817c392d030234baf9c5057cd1b8d08a02c31836d8c388311af834"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.82.1/AgenticOS_1.82.1_aarch64.dmg"
  end
  on_intel do
    sha256 "b5ee1e43bc11c616b0f3e56304960d3760d6d36b5b7d05753217e271fe8b2070"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.82.1/AgenticOS_1.82.1_x64.dmg"
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
