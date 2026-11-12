cask "agenticos" do
  version "1.67.0"
  on_arm do
    sha256 "b3d02473400004e30e7f6a4da103fe2e82e26754c0effc20a64fec71ef1fa44d"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.67.0/AgenticOS_1.67.0_aarch64.dmg"
  end
  on_intel do
    sha256 "b8e713e2e8a7a97305fe56dbab46deb2cd0a2c19117e9c05751099c7cd14256e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.67.0/AgenticOS_1.67.0_x64.dmg"
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
