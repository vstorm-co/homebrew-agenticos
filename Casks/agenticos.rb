cask "agenticos" do
  version "1.50.1"
  on_arm do
    sha256 "3dc26a6abe45b5d2e44a363763c31ba9a0f904bcf79057ff05aeaa2cf6e88f0f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.50.1/AgenticOS_1.50.1_aarch64.dmg"
  end
  on_intel do
    sha256 "857540664f3737b10e7e7e746c09ffcce1a53a83a6413390a2fe219301d68779"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.50.1/AgenticOS_1.50.1_x64.dmg"
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
