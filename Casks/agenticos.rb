cask "agenticos" do
  version "1.62.6"
  on_arm do
    sha256 "678cbbb123db3631910677e2ea1d443cd681686c811e0a539f116907f54f0d08"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.6/AgenticOS_1.62.6_aarch64.dmg"
  end
  on_intel do
    sha256 "97517698b52364de5440b65503dee8d0082adf77e4e108f401fb52fbac70dd0e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.6/AgenticOS_1.62.6_x64.dmg"
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
