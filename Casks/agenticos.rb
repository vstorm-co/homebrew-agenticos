cask "agenticos" do
  version "1.42.0"
  on_arm do
    sha256 "72a6c1d85c0b674ab5e0921775f6e02577eb21d071f534478178246c58efa626"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.42.0/AgenticOS_1.42.0_aarch64.dmg"
  end
  on_intel do
    sha256 "9b400af016218b6a2a4da8d4f8ba2b4876464c28cd3cdde710634158c2cb4538"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.42.0/AgenticOS_1.42.0_x64.dmg"
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
