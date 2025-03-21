cask "quaternion" do
  version "0.0.97.1"
  sha256 "17b695d7f3c6e2850638d2789497b9d193919ca10e11cbe381839016c933d940"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  livecheck do
    url :url
    regex(/^quaternion[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "quaternion.app"

  zap trash: [
    "~/Library/Application Support/Quotient/quaternion",
    "~/Library/Containers/com.github.quaternion",
    "~/Library/Preferences/com.github.quaternion.plist",
    "~/Library/Preferences/com.qmatrixclient.quaternion.plist",
    "~/Library/Preferences/com.quotient.quaternion.plist",
    "~/Library/Saved Application State/com.github.quaternion.savedState",
  ]
end
