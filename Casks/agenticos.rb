cask "agenticos" do
  version "1.72.0"
  on_arm do
    sha256 "8a1893a22d5ad1e0c9e5be846b30854d25b77ab07e2222f3ec7183c3e329519f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.72.0/AgenticOS_1.72.0_aarch64.dmg"
  end
  on_intel do
    sha256 "34a725df445cd852caba93df228f1dd8be98a280b059cf633dad6961f3f89ef7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.72.0/AgenticOS_1.72.0_x64.dmg"
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
