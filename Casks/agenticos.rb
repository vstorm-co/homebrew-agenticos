cask "agenticos" do
  version "1.50.0"
  on_arm do
    sha256 "62e519449f55243675f50f3f5c4f3484152c832d3232fc3146a67f978ae91395"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.50.0/AgenticOS_1.50.0_aarch64.dmg"
  end
  on_intel do
    sha256 "ffe73ffaa41164af627e48fe257ba4d26c948dc41121c63f5165af1ed84a746b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.50.0/AgenticOS_1.50.0_x64.dmg"
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
