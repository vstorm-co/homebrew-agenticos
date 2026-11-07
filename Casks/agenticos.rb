cask "agenticos" do
  version "1.56.0"
  on_arm do
    sha256 "9da00b98091db185c6d273f42c1376b649801c456f6140869dbc55cadacfede0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.0/AgenticOS_1.56.0_aarch64.dmg"
  end
  on_intel do
    sha256 "6e3e304c46b3526f5e6bcda96739ce08620eedf841dac984e037c5456a3056eb"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.0/AgenticOS_1.56.0_x64.dmg"
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
