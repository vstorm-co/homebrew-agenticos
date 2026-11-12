cask "agenticos" do
  version "1.71.2"
  on_arm do
    sha256 "d1a6fb07b6d9936fb40ca1e79d7c2597193a471e1df53d2d2413b4c4ed0dd0c8"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.71.2/AgenticOS_1.71.2_aarch64.dmg"
  end
  on_intel do
    sha256 "fe46ee0b42dfd17bd48a2ebe28694692161bb4b9a46ed5067fa174ab750d58bf"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.71.2/AgenticOS_1.71.2_x64.dmg"
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
