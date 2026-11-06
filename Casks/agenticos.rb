cask "agenticos" do
  version "1.51.0"
  on_arm do
    sha256 "35d3712280db8d0b6b3790433e7a62c1f35f0b9ce97595d1b8f84289d9eb8b49"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.51.0/AgenticOS_1.51.0_aarch64.dmg"
  end
  on_intel do
    sha256 "7e12ed66ca0fa514b8654927469f4cc24eeb18911c0b16e6e7134ad3e0b0755e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.51.0/AgenticOS_1.51.0_x64.dmg"
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
