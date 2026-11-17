cask "agenticos" do
  version "1.82.0"
  on_arm do
    sha256 "f18f84c7d53163d590cc7494c4daa493ea8395c52b74507abe50b087bde71675"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.82.0/AgenticOS_1.82.0_aarch64.dmg"
  end
  on_intel do
    sha256 "bb6e7ba6b7c7ef5d2337e7a071ad9cae0e0ed041c489cd1d58f6e55bf1bb1449"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.82.0/AgenticOS_1.82.0_x64.dmg"
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
