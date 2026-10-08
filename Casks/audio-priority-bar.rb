cask "audio-priority-bar" do
  version "2.9.2"
  sha256 "82f298e8867d107bea34012b097f603b20e0cf66f45d9029459dd31344e63cb7"

  url "https://github.com/camguillory/Audio-Priority-Bar/releases/download/v#{version}/AudioPriorityBar.zip"
  name "Audio Priority Bar"
  desc "Automatically switch audio devices by priority"
  homepage "https://github.com/camguillory/Audio-Priority-Bar"

  auto_updates true
  depends_on macos: :sonoma

  app "AudioPriorityBar.app"

  caveats <<~EOS
    Audio Priority Bar is signed with its own certificate, not an Apple
    Developer ID, and not notarized. If macOS blocks the first launch, open
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end
