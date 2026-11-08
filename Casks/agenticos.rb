cask "agenticos" do
  version "1.58.3"
  on_arm do
    sha256 "2a9fa8abe26e554e047014372afc444e8eec26245963408285fd1ef0f3b546fc"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.3/AgenticOS_1.58.3_aarch64.dmg"
  end
  on_intel do
    sha256 "9311a179bbebd0f211ddeb69954069ed6abde9be801f103f3aae0d5b634441ce"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.58.3/AgenticOS_1.58.3_x64.dmg"
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
