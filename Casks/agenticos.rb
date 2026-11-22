cask "agenticos" do
  version "1.90.0"
  on_arm do
    sha256 "5ed2140c61cc6df423774989fb1d6b9184763e947fda0b617866b8a00ac4b7e8"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.90.0/AgenticOS_1.90.0_aarch64.dmg"
  end
  on_intel do
    sha256 "7661cc87c5fc1ad73dc65feaddd51eb00afac89fdffecd97e0c26e3a977f3ca6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.90.0/AgenticOS_1.90.0_x64.dmg"
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
