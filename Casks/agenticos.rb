cask "agenticos" do
  version "1.87.0"
  on_arm do
    sha256 "ccaeea56ee3fd392fd9d9fc747111cfe6e0112861754f87632f51b68b644d759"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.87.0/AgenticOS_1.87.0_aarch64.dmg"
  end
  on_intel do
    sha256 "82e8587c13da0883762144159a7eae28318750488be5e3ab1f59b5e3db1ea9e0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.87.0/AgenticOS_1.87.0_x64.dmg"
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
