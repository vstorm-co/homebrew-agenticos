cask "agenticos" do
  version "1.38.3"
  on_arm do
    sha256 "b268e51eb6b40be16d3b3caef3dd7ec35771ea009ec66354de8ec79dd57d1273"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.3/AgenticOS_1.38.3_aarch64.dmg"
  end
  on_intel do
    sha256 "4335a867e2252ae2c940f58f5e748a1ea3c61d5df5ca91eaf47c2c1e0a317df4"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.3/AgenticOS_1.38.3_x64.dmg"
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
