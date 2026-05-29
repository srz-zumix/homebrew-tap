# typed: false
# frozen_string_literal: true

cask "jirafs" do
  version "0.2.0"
  sha256 "d707aa274bfa2da2bfcba1238f5dc6944ea34f99b4492aba986b8cf274e32c30"

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
