cask "audio-priority-bar" do
  version "2.5.0"
  sha256 "fb6a1012d37084bab9d1416d19d367a4246a92b760f785770efdd204bab303b7"

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
