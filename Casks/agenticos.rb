cask "agenticos" do
  version "1.39.0"
  on_arm do
    sha256 "eefecdeb5d6bb0d66fb2373cfafb3e463e7f32c40fdd39582cbc600984f4228a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.39.0/AgenticOS_1.39.0_aarch64.dmg"
  end
  on_intel do
    sha256 "840368a98c5f793093427b08da6e8be1bf943f68989fab9b8b42a63b33474551"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.39.0/AgenticOS_1.39.0_x64.dmg"
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
