cask "agenticos" do
  version "1.91.0"
  on_arm do
    sha256 "a19698ae64e5cdc0fc42a1e55535fbde628094b82a54495f0d1fa8e6b15fe4c0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.91.0/AgenticOS_1.91.0_aarch64.dmg"
  end
  on_intel do
    sha256 "30f8cec7a9586ad2903d3f89e641f606129ca55704d195a8d60779787f61c267"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.91.0/AgenticOS_1.91.0_x64.dmg"
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
