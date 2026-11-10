cask "agenticos" do
  version "1.62.4"
  on_arm do
    sha256 "bdc8c45fc6eb2eb322a0da166738e3ee67317221256afe95cd5edfabe1f883f5"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.4/AgenticOS_1.62.4_aarch64.dmg"
  end
  on_intel do
    sha256 "c66231b310cb41c7bf6855083e09665ff18418caa1fe3ebabd1b5b7a838ea356"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.4/AgenticOS_1.62.4_x64.dmg"
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
