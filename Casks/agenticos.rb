cask "agenticos" do
  version "1.61.0"
  on_arm do
    sha256 "8b0d46d89eb9f5268408128024b0bb4d65a5266607291e5cad96e630428405dc"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.0/AgenticOS_1.61.0_aarch64.dmg"
  end
  on_intel do
    sha256 "895718369e3537a65461cfd03001dba4771b44e38d691b2d5f21f5369b35b9c7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.0/AgenticOS_1.61.0_x64.dmg"
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
