# typed: false
# frozen_string_literal: true

cask "jirafs" do
  version "0.3.0"
  sha256 "b86d438058fca41e6eeb7b5b6c9bc892721c4f11b6cb50831493e7890b97e0cf"

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
