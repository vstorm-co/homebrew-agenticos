cask "agenticos" do
  version "1.64.1"
  on_arm do
    sha256 "68ef85607eb7dc37f3efae6a4c953a46682fee8935719fda0ad11b8c3fac3c4a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.64.1/AgenticOS_1.64.1_aarch64.dmg"
  end
  on_intel do
    sha256 "e638f756ca7266dcba5b16d0e658a3aa6cb8488b0bb5d6352bdbe0bcdf52336e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.64.1/AgenticOS_1.64.1_x64.dmg"
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
