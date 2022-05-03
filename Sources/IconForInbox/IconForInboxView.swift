import AppIconCreator
import SwiftUI

public struct IconForInboxView: View {
  public init() {}

  public var body: some View {
    GeometryReader { geometryReader in
      let frameWidth = geometryReader.size.width

      ZStack {

        Color(red: 0, green: 85 / 255, blue: 85 / 255)

        // outside of a tray
        VStack {
          Spacer()

          LinearGradient(
            gradient: Gradient(colors: [
              Color(red: 6 / 255, green: 154 / 255, blue: 142 / 255),
              Color(red: 6 / 255, green: 154 / 255, blue: 142 / 255),
              Color(red: 6 / 255, green: 154 / 255, blue: 142 / 255),
              Color(red: 0 / 255, green: 124 / 255, blue: 112 / 255),
            ]),
            startPoint: .top,
            endPoint: .bottom
          )
          .frame(height: frameWidth * 0.52)
        }

        // inside of a tray
        VStack {
          RoundedRectangle(cornerRadius: frameWidth * 0.2)
            .fill(
              LinearGradient(
                gradient: Gradient(colors: [
                  Color(red: 0, green: 85 / 255, blue: 85 / 255),
                  Color(red: 0, green: 55 / 255, blue: 55 / 255),
                ]),
                startPoint: .top,
                endPoint: .bottom
              )
              //              Color(red: 0, green: 85 / 255, blue: 85 / 255)
            )
            .frame(height: frameWidth * 0.72)

          Spacer()
        }

        Text("{ }")
          .font(.system(size: frameWidth * 0.60))
          .bold()
          .foregroundColor(.white)
          .offset(y: -frameWidth * 0.2)
          .shadow(
            color: Color(red: 55/255, green: 55/255, blue: 55/255, opacity: 1),
            radius: frameWidth * 0.02, x: frameWidth * 0.01, y: frameWidth * 0.005)
        //
        //        LinearGradient(
        //          gradient: Gradient(colors: [
        //            Color(red: 1, green: 1, blue: 1),
        //            Color(red: 247 / 255, green: 1, blue: 147 / 255),
        //            Color(red: 247 / 255, green: 1, blue: 147 / 255),
        //          ]),
        //          startPoint: .top,
        //          endPoint: .bottom
        //        )
        //        .frame(height: frameWidth * 0.7)
        //        .rotationEffect(.degrees(-30))
        //        .offset(y: -frameWidth * 0.1)
        //        .mask(
        //          Image(systemName: "star.fill")
        //            .resizable()
        //            .scaledToFit()
        //            .frame(width: frameWidth * 0.5)
        //            .aspectRatio(contentMode: .fit)
        //            .offset(y: -frameWidth * 0.08)
        //        )

        //        Image(systemName: "star.fill")
        //          .resizable()
        //          .scaledToFit()
        //          .frame(width: frameWidth * 0.5)
        //          .foregroundColor(
        //            //            Color(red: 247 / 255, green: 255 / 255, blue: 147 / 255)
        //
        //          )
        //          .offset(y: -frameWidth * 0.1)
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
