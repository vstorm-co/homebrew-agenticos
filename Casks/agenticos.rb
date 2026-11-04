cask "agenticos" do
  version "1.45.0"
  on_arm do
    sha256 "d782396544edda99aa55e360c633288e6df869a049096ce3248f6dc6030c4d0b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.45.0/AgenticOS_1.45.0_aarch64.dmg"
  end
  on_intel do
    sha256 "694c8c1d6f4bbe6093d1ada90669b5d7727e8d55c6bd58414af9eb5582b838d1"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.45.0/AgenticOS_1.45.0_x64.dmg"
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
