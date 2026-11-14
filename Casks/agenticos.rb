cask "agenticos" do
  version "1.74.0"
  on_arm do
    sha256 "79cc719b471da9b195b9f2f5b3c67d31b536a852a4ef26f242d5df26385e69e9"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.74.0/AgenticOS_1.74.0_aarch64.dmg"
  end
  on_intel do
    sha256 "bc90a7500f190df328d8f4c89ebcac00c73bed2e690029308ebac559202887d2"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.74.0/AgenticOS_1.74.0_x64.dmg"
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
