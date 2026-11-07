cask "agenticos" do
  version "1.55.0"
  on_arm do
    sha256 "557888afc88a25591dc6dc298e076166c258c7a0418333ad7945fd1e752ec207"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.55.0/AgenticOS_1.55.0_aarch64.dmg"
  end
  on_intel do
    sha256 "3d714449913e3309711fbb9ef9d186899c66c3a562b06ce373680d077108398a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.55.0/AgenticOS_1.55.0_x64.dmg"
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
