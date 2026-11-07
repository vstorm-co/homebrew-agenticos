cask "agenticos" do
  version "1.54.0"
  on_arm do
    sha256 "ff8f91f422955f3a4f060bbf787bc368011fac27f453d00fe60599dbe2ec285c"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.54.0/AgenticOS_1.54.0_aarch64.dmg"
  end
  on_intel do
    sha256 "fbd1a1a81ecf63ed88268def2038faefe04830c42a897fc23d2d41785ee31d97"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.54.0/AgenticOS_1.54.0_x64.dmg"
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
