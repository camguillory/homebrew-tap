cask "audio-priority-bar" do
  version "2.9.0"
  sha256 "3dc1e588b362d00c70fe95e4d947fbfa188a9766cecb017c86adf93d3deb4612"

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
