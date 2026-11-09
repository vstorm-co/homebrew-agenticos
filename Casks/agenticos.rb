cask "agenticos" do
  version "1.59.1"
  on_arm do
    sha256 "1785f16efd8a7b443d5a934afe1d57778b5342d9ffb9f3725a68c48450b2c301"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.59.1/AgenticOS_1.59.1_aarch64.dmg"
  end
  on_intel do
    sha256 "e3839321354b6864daac946c1e5a13b724fb4eba9c7141b78bee9fc343899602"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.59.1/AgenticOS_1.59.1_x64.dmg"
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
