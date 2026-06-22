# typed: false
# frozen_string_literal: true

cask "jirafs" do
  version "1.3.0"
  sha256 "de972975deabae07ef05912dca3a1f1f9bef247c67c88f7b9ff021a6f5252619"

  url "https://github.com/srz-zumix/jirafs/releases/download/v#{version}/jirafs-v#{version}.dmg"
  name "jirafs"
  desc "Mount JIRA projects as a macOS filesystem"
  homepage "https://github.com/srz-zumix/jirafs"

  app "jirafs.app"

  zap trash: [
    "~/Library/Application Support/jirafs",
    "~/Library/Caches/jirafs",
    "~/Library/Containers/com.zumix.jirafs",
    "~/Library/Containers/com.zumix.jirafs.fskit",
  ]
end
