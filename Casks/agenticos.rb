cask "agenticos" do
  version "1.39.1"
  on_arm do
    sha256 "1f4e23fd90f0de871000038ef5a13a2794563352ea1e4e11b6b35c917a9d6e8c"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.39.1/AgenticOS_1.39.1_aarch64.dmg"
  end
  on_intel do
    sha256 "97260488c354f8c1e7c5640a8a508ff1eb1ab0998bf5496b7c0ede129550a014"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.39.1/AgenticOS_1.39.1_x64.dmg"
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
