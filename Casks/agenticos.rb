cask "agenticos" do
  version "1.50.2"
  on_arm do
    sha256 "a6034c6884909b2f61a9b006193dee4e31def8ca704a006ad9b53e04bb358e09"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.50.2/AgenticOS_1.50.2_aarch64.dmg"
  end
  on_intel do
    sha256 "ff3958caf4b7f0a416d0c779814de9a3633ea6f87c98724094093b60c8cce98f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.50.2/AgenticOS_1.50.2_x64.dmg"
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
