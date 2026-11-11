cask "agenticos" do
  version "1.66.0"
  on_arm do
    sha256 "00f108f54fe00aa516dbbfaa82b3056140980fd0de257753de8020626d8315f3"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.66.0/AgenticOS_1.66.0_aarch64.dmg"
  end
  on_intel do
    sha256 "759f288eaf913917339a1d1e90c075b3a96ce98d396f970f3eb62981fb1011be"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.66.0/AgenticOS_1.66.0_x64.dmg"
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
