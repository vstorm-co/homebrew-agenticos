cask "agenticos" do
  version "1.90.1"
  on_arm do
    sha256 "b9e33308e9378855ea12c6dba2c2df8f1acdb694228e4e805462a55edeafe40c"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.90.1/AgenticOS_1.90.1_aarch64.dmg"
  end
  on_intel do
    sha256 "eccc15b67760ace05b533833ca4c536e9f7a909e277566d3b1e8c45457b5fbe6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.90.1/AgenticOS_1.90.1_x64.dmg"
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
