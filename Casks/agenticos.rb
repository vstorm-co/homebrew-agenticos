cask "agenticos" do
  version "1.62.8"
  on_arm do
    sha256 "c78e9c507859ee60dc171d13fb5aa136988a9f31b6b45358969c2b33cc691519"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.8/AgenticOS_1.62.8_aarch64.dmg"
  end
  on_intel do
    sha256 "961d3527169b8325e7eb2bf97557b37b7ae6eb1e3ea238ea13d818a2b76aa2cc"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.8/AgenticOS_1.62.8_x64.dmg"
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
