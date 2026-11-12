cask "agenticos" do
  version "1.71.1"
  on_arm do
    sha256 "82b0ccdff9757ab8a4b939e5b52d1061b17ed6bc939b8ef013859114bbba4b3b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.71.1/AgenticOS_1.71.1_aarch64.dmg"
  end
  on_intel do
    sha256 "2338c3afa177eefa4c53f177c622ae839ff28313c41d6709ccebadc7a2bb6e70"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.71.1/AgenticOS_1.71.1_x64.dmg"
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
