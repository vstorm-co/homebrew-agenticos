cask "agenticos" do
  version "1.94.0"
  on_arm do
    sha256 "a02d2e7a12bceeb52fbb10e425b8cf19ac6f5bdfffcc7293b8e42f8f23ab5804"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.94.0/AgenticOS_1.94.0_aarch64.dmg"
  end
  on_intel do
    sha256 "cfd02ebfe7624fb50e95537859ec4d007e2447ab9da129a3f67cfbd9b898b5ed"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.94.0/AgenticOS_1.94.0_x64.dmg"
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
