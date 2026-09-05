# typed: false
# frozen_string_literal: true

cask "jirafs" do
  version "1.8.0"
  sha256 "f97dca8d86dd498817308f2f60e3a1de6385a2f7d877b044f466f1953d8f1c9a"

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
