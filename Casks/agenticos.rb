cask "agenticos" do
  version "1.61.5"
  on_arm do
    sha256 "a8be245fd6e64442ceeb1985789ddff873ddde4037fce5bff0c250d75203a42d"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.5/AgenticOS_1.61.5_aarch64.dmg"
  end
  on_intel do
    sha256 "cf11e25bbaf382d8926571e739aa14abfea319f0db2668004fca992acc458e9f"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.61.5/AgenticOS_1.61.5_x64.dmg"
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
