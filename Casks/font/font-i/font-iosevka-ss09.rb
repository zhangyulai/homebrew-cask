cask "font-iosevka-ss09" do
  version "30.1.2"
  sha256 "0a3641aad8e58f9f4b6c52faa77eae8bfccb74cc6e76976debb8958ff7695cbd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09-Bold.ttc"
  font "IosevkaSS09-ExtraBold.ttc"
  font "IosevkaSS09-ExtraLight.ttc"
  font "IosevkaSS09-Heavy.ttc"
  font "IosevkaSS09-Light.ttc"
  font "IosevkaSS09-Medium.ttc"
  font "IosevkaSS09-Regular.ttc"
  font "IosevkaSS09-SemiBold.ttc"
  font "IosevkaSS09-Thin.ttc"

  # No zap stanza required
end
