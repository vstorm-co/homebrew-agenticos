cask "agenticos" do
  version "1.95.0"
  on_arm do
    sha256 "f05b435469463c0b057b66db63abe663088ac32a031c5e5827d1a38bf6bff053"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.95.0/AgenticOS_1.95.0_aarch64.dmg"
  end
  on_intel do
    sha256 "c0d6bfc22634f92deb04d911706e94692622337185533626a70005b24f56c40b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.95.0/AgenticOS_1.95.0_x64.dmg"
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
