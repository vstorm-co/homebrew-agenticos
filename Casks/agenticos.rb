cask "agenticos" do
  version "1.61.1"
  on_arm do
    sha256 "4ee9faac376dff7858500008b64ce5fcde47020e6a7e5f4c177502e4d3dfd05c"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.1/AgenticOS_1.61.1_aarch64.dmg"
  end
  on_intel do
    sha256 "5f2cf41dd5dc80ec11b4e6f87690862dace5a49bce9a1b1efb1a7a0d4dd2f5c6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.1/AgenticOS_1.61.1_x64.dmg"
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
