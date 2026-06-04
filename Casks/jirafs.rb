# typed: false
# frozen_string_literal: true

cask "jirafs" do
  version "0.4.0"
  sha256 "fedbaf0699e6c97dcf838447fa9f6b9bb52e03282ef57fc2c0e0f5d732f107e8"

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
