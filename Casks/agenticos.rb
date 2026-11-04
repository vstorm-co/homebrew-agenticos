cask "agenticos" do
  version "1.47.3"
  on_arm do
    sha256 "4b893e501a3e2904d6695d55e96442999e8ef9efca34319493045cf6153cc9fd"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.3/AgenticOS_1.47.3_aarch64.dmg"
  end
  on_intel do
    sha256 "05eca2ec3b44511a2e4e4d11cedfe2cc7c6963723a2f546f185cc2cde567f6a9"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.47.3/AgenticOS_1.47.3_x64.dmg"
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
