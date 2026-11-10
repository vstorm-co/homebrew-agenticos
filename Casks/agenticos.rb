cask "agenticos" do
  version "1.62.5"
  on_arm do
    sha256 "a18b806f81478da226373cc8c4d671ef74ed66a6cb43232c7430faa125b91d8b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.5/AgenticOS_1.62.5_aarch64.dmg"
  end
  on_intel do
    sha256 "d75c5868ca1853739ef57858f65e05d07be302ba44aeddebf062ef9faa2cac4b"
    url "https://github.com/vstorm-co/agenticos/releases/download/v1.62.5/AgenticOS_1.62.5_x64.dmg"
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
