cask "agenticos" do
  version "1.41.0"
  on_arm do
    sha256 "de51902408ced034ff66a23207f055e8a48ddac82be1763944cc5b7ee9190203"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.41.0/AgenticOS_1.41.0_aarch64.dmg"
  end
  on_intel do
    sha256 "3a7772f6c9ea0482a19275004f92b4eece826953a099c102a22a3220ab6c4254"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.41.0/AgenticOS_1.41.0_x64.dmg"
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
