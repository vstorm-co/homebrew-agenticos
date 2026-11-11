cask "agenticos" do
  version "1.65.1"
  on_arm do
    sha256 "01fbeded39471704fd8c14ee0d81cfb1cc0163db0e9c3657769b8ef39cd1920a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.65.1/AgenticOS_1.65.1_aarch64.dmg"
  end
  on_intel do
    sha256 "74979677e2ac20edd8acc9db29523228d733c0fbf2bae93aa817c8713e088e17"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.65.1/AgenticOS_1.65.1_x64.dmg"
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
