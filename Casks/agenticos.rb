cask "agenticos" do
  version "1.62.1"
  on_arm do
    sha256 "064c569d4ede46ef42f341423c0162463c2f7aa0e5c2cff657717653a210b0e3"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.1/AgenticOS_1.62.1_aarch64.dmg"
  end
  on_intel do
    sha256 "0745c5d3010aee79923dd755161b98c38c37df5e75e385eb4e8e093a70411ab7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.1/AgenticOS_1.62.1_x64.dmg"
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
