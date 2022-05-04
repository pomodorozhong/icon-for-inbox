import AppIconCreator
import SwiftUI

public struct IconForInboxView: View {
  public init() {}

  public var body: some View {
    GeometryReader { geometryReader in
      let frameWidth = geometryReader.size.width

      ZStack {
        Color(.black)

        Image(systemName: "tray.full")
          .resizable()
          .frame(width: frameWidth * 0.45, height: frameWidth * 0.38)
          .foregroundColor(.white)
          .offset(x: -frameWidth * 0.15, y: frameWidth * 0.15)
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
