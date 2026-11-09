cask "agenticos" do
  version "1.61.3"
  on_arm do
    sha256 "dc09ce83c55673634fc9e04613fd2d13489ca99804d563c7afa28e5d53db9ae1"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.3/AgenticOS_1.61.3_aarch64.dmg"
  end
  on_intel do
    sha256 "ed55161d5908786047cb4d0eb52a4bd2d5c8bae95dca926123604498e7acdd41"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.3/AgenticOS_1.61.3_x64.dmg"
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
