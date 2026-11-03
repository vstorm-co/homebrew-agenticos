cask "agenticos" do
  version "1.38.4"
  on_arm do
    sha256 "5654fbbbbb66a721622dd3b77d76477cc4a9838ec1b6171409c0eb85c6079de5"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.4/AgenticOS_1.38.4_aarch64.dmg"
  end
  on_intel do
    sha256 "17cf42124ff3d3bf71a81af9eff9e6868ca584500dcde484a1adacbed6285f6b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.38.4/AgenticOS_1.38.4_x64.dmg"
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
