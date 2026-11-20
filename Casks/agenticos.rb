cask "agenticos" do
  version "1.86.2"
  on_arm do
    sha256 "e7366744c2004ca5c74220de334625c8956b16fbd1bf3c0281160c81ee825f0b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.86.2/AgenticOS_1.86.2_aarch64.dmg"
  end
  on_intel do
    sha256 "d3d1015bb180b0245aa4bd14e6ae8c2e34d28eca0ce972033db27e2f8c0cb426"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.86.2/AgenticOS_1.86.2_x64.dmg"
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
