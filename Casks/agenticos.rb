cask "agenticos" do
  version "1.87.1"
  on_arm do
    sha256 "a338ede147257e5710f11bc289fb0771b8eaacb15de1839d15a4a241945731eb"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.87.1/AgenticOS_1.87.1_aarch64.dmg"
  end
  on_intel do
    sha256 "e075ea6d485d20e2bebd3a33ddea4b17e0d98a28516a46007998de1abd3e60a4"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.87.1/AgenticOS_1.87.1_x64.dmg"
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
