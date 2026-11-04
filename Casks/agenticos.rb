cask "agenticos" do
  version "1.43.0"
  on_arm do
    sha256 "3b9c477c8c7b0eda0b12c01744f34f7f29190a3abcd5e658fc7cadb3e50225c0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.43.0/AgenticOS_1.43.0_aarch64.dmg"
  end
  on_intel do
    sha256 "d557b6c573f741bac0758ad750129470291d4b268e9b6a1eda9154bd4d18d5a2"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.43.0/AgenticOS_1.43.0_x64.dmg"
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
