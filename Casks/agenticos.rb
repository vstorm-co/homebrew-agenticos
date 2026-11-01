cask "agenticos" do
  version "1.33.2"
  on_arm do
    sha256 "b70f89c9df2538ffa953101bb9f9a959a3f7eca9505a8d871e3a8eec389ee09b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.33.2/AgenticOS_1.33.2_aarch64.dmg"
  end
  on_intel do
    sha256 "a5edbd52db8323de893c3725386b3cc315f5c2b30e0a07b2fef151c3984d0f79"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.33.2/AgenticOS_1.33.2_x64.dmg"
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
