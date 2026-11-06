cask "agenticos" do
  version "1.52.0"
  on_arm do
    sha256 "d5894081e9ba2f663470a650de7cd3cc9dabd73beedd5c8fc1094db8fbe85034"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.52.0/AgenticOS_1.52.0_aarch64.dmg"
  end
  on_intel do
    sha256 "683f60d076ab59265467ea547fde7b6900998fad20fa3e896d03399b0dd8c1f4"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.52.0/AgenticOS_1.52.0_x64.dmg"
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
