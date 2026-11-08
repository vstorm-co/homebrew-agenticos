cask "agenticos" do
  version "1.56.2"
  on_arm do
    sha256 "eb2238730c17bf7ce229d715543208efecfd8cf6dcfa3757ffd38824f95d8a88"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.2/AgenticOS_1.56.2_aarch64.dmg"
  end
  on_intel do
    sha256 "0fbc31f2f6934789646347f90e1d1cfde63ca5121fd1198e7a43cc7c50197f20"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.2/AgenticOS_1.56.2_x64.dmg"
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
