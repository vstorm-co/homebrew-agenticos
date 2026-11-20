cask "agenticos" do
  version "1.86.0"
  on_arm do
    sha256 "9b25bb47dbe0a50b64e2d728f2e923dbfb49e4f35908e2eaace6c2427fc0d121"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.86.0/AgenticOS_1.86.0_aarch64.dmg"
  end
  on_intel do
    sha256 "6be2d8e4e262975a58dffd43fcaf792c79c9e34a0338e399119eb7026ea15f12"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.86.0/AgenticOS_1.86.0_x64.dmg"
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
