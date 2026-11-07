cask "agenticos" do
  version "1.54.1"
  on_arm do
    sha256 "c1df12255d64c833b073940c7b4a3906421e3464744bda8072ce254414628f86"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.54.1/AgenticOS_1.54.1_aarch64.dmg"
  end
  on_intel do
    sha256 "528cec04f69d204adf5abf71d461ecc4d375e8e2a2f0dca376af8ff78662d7a6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.54.1/AgenticOS_1.54.1_x64.dmg"
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
