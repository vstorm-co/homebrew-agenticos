cask "agenticos" do
  version "1.60.2"
  on_arm do
    sha256 "d0c3cab8de945169b2c0a1c78cbe0a9000d70210c28dac2f3be7b9dbc723f906"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.2/AgenticOS_1.60.2_aarch64.dmg"
  end
  on_intel do
    sha256 "b6fed4a48f99d71027664bdb3ac9769041933db04bd32c559d1face19df70df7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.2/AgenticOS_1.60.2_x64.dmg"
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
