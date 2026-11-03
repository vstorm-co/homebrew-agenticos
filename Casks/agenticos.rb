cask "agenticos" do
  version "1.38.0"
  on_arm do
    sha256 "56cad528005a17365ef5a6038c261498c6d55b23b9b82a5d69488ac6055f3d74"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.0/AgenticOS_1.38.0_aarch64.dmg"
  end
  on_intel do
    sha256 "c5d1c9e129c646532fbb8c9321050511a2846a74215d8fabdff44c5e7189daf0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.0/AgenticOS_1.38.0_x64.dmg"
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
