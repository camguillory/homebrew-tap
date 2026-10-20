cask "audio-priority-bar" do
  version "2.11.0"
  sha256 "41c20317bb41b6cfd6f32b43258a7bfd86fc3280f4420d52087b823f4c6889e4"

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
