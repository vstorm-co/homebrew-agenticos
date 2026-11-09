cask "agenticos" do
  version "1.60.1"
  on_arm do
    sha256 "6684a73755ee38f47183e970a54ff7dcc99b3347fcf2a35ae18f8ec39d8cf2c6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.1/AgenticOS_1.60.1_aarch64.dmg"
  end
  on_intel do
    sha256 "b68c6c3568d4c42e1a4903d859ac24772962e308ba77ea733a2d4ff4d0ff2ecf"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.1/AgenticOS_1.60.1_x64.dmg"
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
