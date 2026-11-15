cask "agenticos" do
  version "1.76.0"
  on_arm do
    sha256 "16f72ed68c2c68ddfc16892ce04e46b35e5a289afc0b067abd7b79f294979b71"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.76.0/AgenticOS_1.76.0_aarch64.dmg"
  end
  on_intel do
    sha256 "aa54440ac3b4e9d3d4cac4b2b3eda45881d8e50d8afc2d9c2fc59aab6fec39ad"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.76.0/AgenticOS_1.76.0_x64.dmg"
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
