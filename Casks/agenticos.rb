cask "agenticos" do
  version "1.62.0"
  on_arm do
    sha256 "ed72f6a4c163b9cfdc410ffd47db1a2f03d210cde157d98d33aa89dd656394f4"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.0/AgenticOS_1.62.0_aarch64.dmg"
  end
  on_intel do
    sha256 "e9ae40f15b5969195abd009a97710c50124831ec8c0212b6927b6e5f65a26378"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.0/AgenticOS_1.62.0_x64.dmg"
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
