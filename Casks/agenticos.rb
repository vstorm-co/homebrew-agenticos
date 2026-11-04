cask "agenticos" do
  version "1.45.1"
  on_arm do
    sha256 "20400bb354f277d7b12332dd8056dc4958e1de989bd0398f6fba887d4aca722b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.45.1/AgenticOS_1.45.1_aarch64.dmg"
  end
  on_intel do
    sha256 "b3408bb9681059d300222d2a7e90b1c97ab378b12424a0e363a73767a62eb8d6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.45.1/AgenticOS_1.45.1_x64.dmg"
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
