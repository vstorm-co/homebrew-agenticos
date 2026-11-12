cask "agenticos" do
  version "1.71.0"
  on_arm do
    sha256 "55412954b38a204599e76b0b2adf0d33088ae8783e45ba21bac6ba49deaaea2e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.71.0/AgenticOS_1.71.0_aarch64.dmg"
  end
  on_intel do
    sha256 "4315f9ce19345f9aa9ae12e56b5e9c57b5857a63295917d7747eadae59c7d6e9"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.71.0/AgenticOS_1.71.0_x64.dmg"
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
