cask "agenticos" do
  version "1.82.2"
  on_arm do
    sha256 "3eef1ed03637d359e6b7138345e83fb0058fe71097b27b8b78f8155ac54e24a8"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.82.2/AgenticOS_1.82.2_aarch64.dmg"
  end
  on_intel do
    sha256 "b7a245d09d1a3e8892db1a02afd5a5a619d4543a7f8d904c34501b98c0b42c51"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.82.2/AgenticOS_1.82.2_x64.dmg"
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
