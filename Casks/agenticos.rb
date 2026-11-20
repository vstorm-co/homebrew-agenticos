cask "agenticos" do
  version "1.85.1"
  on_arm do
    sha256 "68ea7513d936cec75ca42e00f9730a5522b5b3eac960bcd424b51fe0aa3a2d9a"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.85.1/AgenticOS_1.85.1_aarch64.dmg"
  end
  on_intel do
    sha256 "56d7f33dddef0d32018effb139a4713c0376caf7de8e1428417541c0715155ad"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.85.1/AgenticOS_1.85.1_x64.dmg"
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
