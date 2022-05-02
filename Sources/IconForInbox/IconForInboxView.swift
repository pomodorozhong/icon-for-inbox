import AppIconCreator
import SwiftUI

public struct IconForInboxView: View {
  public init() {}

  public var body: some View {
    GeometryReader { geometryReader in
      let frameWidth = geometryReader.size.width

      ZStack {
        Color(red: 0.5, green: 0.5, blue: 0.5)

        Image(systemName: "tray")
          .resizable()
          .scaledToFit()
          .frame(width: frameWidth * 0.7)
      }
    }
  }
}

struct IconForInboxView_Previews: PreviewProvider {
  static var previews: some View {
    IconPreviews(
      icon: IconForInboxView(),
      configs: .iOS
    )
  }
}
