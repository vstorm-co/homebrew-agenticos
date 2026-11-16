cask "agenticos" do
  version "1.76.2"
  on_arm do
    sha256 "be24e27badbb8bb11ed23b2018478f818104e1b77e5af65f61c3169c8ab5adc2"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.76.2/AgenticOS_1.76.2_aarch64.dmg"
  end
  on_intel do
    sha256 "9fa72986e263f9b5c6b008841c21630357a1ed6c9b9f3cf783819d9eca8785c3"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.76.2/AgenticOS_1.76.2_x64.dmg"
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
