cask "agenticos" do
  version "1.61.4"
  on_arm do
    sha256 "ed17a7dca871bca15afa2ba00cfb30c5a4b96bf438037a92d0a1cfbd95c6dfe4"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.4/AgenticOS_1.61.4_aarch64.dmg"
  end
  on_intel do
    sha256 "0b6ebc69182eb1e9d51cbbcdb7e00decff7d199bccf7a6ff25e5f04685e1b8f5"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.4/AgenticOS_1.61.4_x64.dmg"
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
