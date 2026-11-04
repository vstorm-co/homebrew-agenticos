cask "agenticos" do
  version "1.44.0"
  on_arm do
    sha256 "47d1d36e377cbdeaad1ac5326690e32e78b73f48d4744e34df8602e3b220adcc"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.44.0/AgenticOS_1.44.0_aarch64.dmg"
  end
  on_intel do
    sha256 "30defd02876e37376828d06d9c3a21eead1c00b4863d984d0f762fc770486aa3"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.44.0/AgenticOS_1.44.0_x64.dmg"
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
