import AppIconCreator
import Foundation
import IconForInbox

let icon = IconForInboxView()
let configs = [IconConfig].iOS
let images = [IconImage].images(for: icon, with: configs)
let exportURL = FileManager.default
  .homeDirectoryForCurrentUser
  .appendingPathComponent("Desktop")
  .appendingPathComponent("icon-for-inbox")
images.forEach { $0.save(to: exportURL) }
