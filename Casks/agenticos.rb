cask "agenticos" do
  version "1.53.0"
  on_arm do
    sha256 "d85786afbc9f8877697d3f0f5bf73223493e50583f7424d6a426672de7aafeda"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.53.0/AgenticOS_1.53.0_aarch64.dmg"
  end
  on_intel do
    sha256 "2418781ec4136f209c681b4f08dea1ffb861d1ad718ffa077f5f52051b908883"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.53.0/AgenticOS_1.53.0_x64.dmg"
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
