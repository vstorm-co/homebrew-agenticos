cask "agenticos" do
  version "1.59.0"
  on_arm do
    sha256 "6c414d27cc953c8f50d786a536ebc782724bddbcb0c20589fb94e457738c1083"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.59.0/AgenticOS_1.59.0_aarch64.dmg"
  end
  on_intel do
    sha256 "180838c23c7d404c01823bcaf19ab1153dd9f47ff7c886191a9ec536c10da521"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.59.0/AgenticOS_1.59.0_x64.dmg"
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
