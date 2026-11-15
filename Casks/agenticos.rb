cask "agenticos" do
  version "1.75.0"
  on_arm do
    sha256 "29d306a6c9f0114dd0816c33f41f9124e4441aa826cd402a87cf621e49c85d49"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.75.0/AgenticOS_1.75.0_aarch64.dmg"
  end
  on_intel do
    sha256 "2e610268f7650a6a748998f60e2fbd737eb9f0f072d397b9572e1020e491821d"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.75.0/AgenticOS_1.75.0_x64.dmg"
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
