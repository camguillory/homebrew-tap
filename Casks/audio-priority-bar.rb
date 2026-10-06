cask "audio-priority-bar" do
  version "2.8.0"
  sha256 "c89400327bb996a0e10ce2049af6b7c0771d2d6932e828585577a19c96745957"

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
