cask "agenticos" do
  version "1.89.1"
  on_arm do
    sha256 "c063822c101deb50409a648f57ef4ab0f87cac5d165777be4eb5b3f40fc34ae3"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.89.1/AgenticOS_1.89.1_aarch64.dmg"
  end
  on_intel do
    sha256 "92bd37c142750a0dbaeeb6c43ebac5f1d8a5a4f4c14024c4ee38dd7799e2c644"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.89.1/AgenticOS_1.89.1_x64.dmg"
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
