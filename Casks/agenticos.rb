cask "agenticos" do
  version "1.57.0"
  on_arm do
    sha256 "70dd5ceb348e1e24d6e1f9d3c4fe679db5bdd114269cc15de7c4e9855f427bbc"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.57.0/AgenticOS_1.57.0_aarch64.dmg"
  end
  on_intel do
    sha256 "666a48bb1365fa9c2b1002e721948203b8f0d6877e322bb728b964cb16b816c9"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.57.0/AgenticOS_1.57.0_x64.dmg"
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
