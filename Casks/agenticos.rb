cask "agenticos" do
  version "1.77.0"
  on_arm do
    sha256 "530af07bc0eaf9483a3adb65b61a4925def9eb6f0c2797afde79be4d05b4becb"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.77.0/AgenticOS_1.77.0_aarch64.dmg"
  end
  on_intel do
    sha256 "47fe699e077f3bff3778706bfa6f14fac76e621c0bcf92c0c7b67d92572dbbc6"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.77.0/AgenticOS_1.77.0_x64.dmg"
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
