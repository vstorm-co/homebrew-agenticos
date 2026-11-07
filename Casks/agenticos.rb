cask "agenticos" do
  version "1.56.1"
  on_arm do
    sha256 "f9d69049e43781629642e67307d9714fde0c009fb8cec0345b1950f530f2a003"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.1/AgenticOS_1.56.1_aarch64.dmg"
  end
  on_intel do
    sha256 "7975f4cec3e728df46e26a702264fbaffd76c86e20ce3025d093a88f6e5a1cc7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.1/AgenticOS_1.56.1_x64.dmg"
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
