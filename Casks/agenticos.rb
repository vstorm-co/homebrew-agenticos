cask "agenticos" do
  version "1.39.2"
  on_arm do
    sha256 "b3dbe6c3e814f44a514854bc6eabd6d58f3e841fb4ced0b239c07797504ad9ca"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.39.2/AgenticOS_1.39.2_aarch64.dmg"
  end
  on_intel do
    sha256 "4de735edf871c3a9c1c0e370ceffa882d8a914e704d74e050f161d56852dffea"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.39.2/AgenticOS_1.39.2_x64.dmg"
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
