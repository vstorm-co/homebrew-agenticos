cask "agenticos" do
  version "1.56.4"
  on_arm do
    sha256 "947fdf6d6e05df4e69d0f3ec6a6be83d595bad8afc2dd6667b7f96a3a75e5447"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.4/AgenticOS_1.56.4_aarch64.dmg"
  end
  on_intel do
    sha256 "9662660d65131a76d3cf3f5b01d298dcac033b864d96f0d73971f952e807f171"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.56.4/AgenticOS_1.56.4_x64.dmg"
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
