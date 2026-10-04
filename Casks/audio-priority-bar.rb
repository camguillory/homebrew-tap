cask "audio-priority-bar" do
  version "2.7.0"
  sha256 "0a9b951688c24eb3105ebcbf5616454a7d5f9613bdedfcb5d538cd6963bb38aa"

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
