cask "agenticos" do
  version "1.60.3"
  on_arm do
    sha256 "d6fe2c2c659d5a02dca3043dd9821385500a93276171fbde56498b1e0d9f7f2f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.3/AgenticOS_1.60.3_aarch64.dmg"
  end
  on_intel do
    sha256 "af12db34d8a57a3296af422ce449f62a65af423a645577291f4a32f378479df0"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.60.3/AgenticOS_1.60.3_x64.dmg"
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
