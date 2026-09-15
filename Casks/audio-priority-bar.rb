cask "audio-priority-bar" do
  version "2.1.0"
  sha256 "c18c3e6d16404e7078ab57c0b4cc94eb8ed72a21bdec3d252d8a32cee55d24a5"

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
