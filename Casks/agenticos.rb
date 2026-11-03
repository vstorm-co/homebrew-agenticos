cask "agenticos" do
  version "1.38.1"
  on_arm do
    sha256 "94390a7d81c23e0792fdb3ce76eb898a901b38840405fa24a028a030e9a38976"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.1/AgenticOS_1.38.1_aarch64.dmg"
  end
  on_intel do
    sha256 "492c520e56344ec799750ac0a37a67e12bab2f1718e40fd6ef277b3cb2e55efb"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.1/AgenticOS_1.38.1_x64.dmg"
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
