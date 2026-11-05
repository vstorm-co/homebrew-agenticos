cask "agenticos" do
  version "1.48.1"
  on_arm do
    sha256 "ce0c3e0067489e7c24f17cb8d8ed56d4ac8b3baf67f1393088504d0e80be055f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.48.1/AgenticOS_1.48.1_aarch64.dmg"
  end
  on_intel do
    sha256 "47d78065df791bc8ee0f1515f0a1a75ca34037419bfe3979de49b49d1f8d1cd0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.48.1/AgenticOS_1.48.1_x64.dmg"
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
