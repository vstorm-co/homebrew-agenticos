cask "agenticos" do
  version "1.62.7"
  on_arm do
    sha256 "ffe1b293865ab18c2618910c40548b439303e0c856dc9e079926a3fab37872b1"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.7/AgenticOS_1.62.7_aarch64.dmg"
  end
  on_intel do
    sha256 "ea09e285f45165b19175149fb551c20663b6e7a29e7b5be484ae94262704c12e"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.7/AgenticOS_1.62.7_x64.dmg"
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
