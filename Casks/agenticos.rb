cask "agenticos" do
  version "1.76.1"
  on_arm do
    sha256 "9f3cf88a406828e96e1611eb83b6d1d461ac7d717ab78e92a02f2465d1549d1b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.76.1/AgenticOS_1.76.1_aarch64.dmg"
  end
  on_intel do
    sha256 "2416cdaba7462961ebecff5cf710a74df42860a317f66a44a145f17ccf3e99e7"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.76.1/AgenticOS_1.76.1_x64.dmg"
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
