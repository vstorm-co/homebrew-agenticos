cask "agenticos" do
  version "1.68.0"
  on_arm do
    sha256 "4f8491ceb9f299f634c415813a24ec209fb0b6e8b6d7a8668b0337c5435a0cb2"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.68.0/AgenticOS_1.68.0_aarch64.dmg"
  end
  on_intel do
    sha256 "5d461fb0612f4954d6dc2ce2621e7e5b537c5adadd251a1f59c59120d69842eb"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.68.0/AgenticOS_1.68.0_x64.dmg"
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
