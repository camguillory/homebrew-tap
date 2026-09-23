cask "audio-priority-bar" do
  version "2.3.0"
  sha256 "452d2ac2d407c9880ce7c0903ff0511ac3dd94cbf0efbc9c695421257d7ed705"

  url "https://github.com/camguillory/Audio-Priority-Bar/releases/download/v#{version}/AudioPriorityBar.zip"
  name "Audio Priority Bar"
  desc "Automatically switch audio devices by priority"
  homepage "https://github.com/camguillory/Audio-Priority-Bar"

  depends_on macos: :sonoma

  app "AudioPriorityBar.app"

  caveats <<~EOS
    Audio Priority Bar is ad-hoc signed, not notarized. If macOS blocks the
    first launch, open System Settings > Privacy & Security and click Open Anyway.
  EOS
end
