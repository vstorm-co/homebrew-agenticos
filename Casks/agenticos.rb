cask "agenticos" do
  version "1.70.0"
  on_arm do
    sha256 "9aff927e93d47054dbf7d9f6ae62895efbb90211f8a0ee4e161fa9ee0be4a349"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.70.0/AgenticOS_1.70.0_aarch64.dmg"
  end
  on_intel do
    sha256 "0801b0e28332a66c0b38f21aec39651b850ac749eefe737043a9c7700946aa94"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.70.0/AgenticOS_1.70.0_x64.dmg"
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
