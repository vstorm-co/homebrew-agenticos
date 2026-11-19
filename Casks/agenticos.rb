cask "agenticos" do
  version "1.85.0"
  on_arm do
    sha256 "25c0430a505d3e724bcf0cb5b6f4c4b6a0bc5668ce36cdea981b2f5da7de61c0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.85.0/AgenticOS_1.85.0_aarch64.dmg"
  end
  on_intel do
    sha256 "8ae8535eea294c7c016343e75aa69c9441cc2095272019da00c69f1a0d671de7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.85.0/AgenticOS_1.85.0_x64.dmg"
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
