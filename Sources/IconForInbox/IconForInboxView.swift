import AppIconCreator
import SwiftUI

public struct IconForInboxView: View {
  public init() {}

  public var body: some View {
    GeometryReader { geometryReader in
      let frameWidth = geometryReader.size.width

      let boxFrameWidth = frameWidth * 0.75
      let boxFrameHeight = frameWidth * 0.73

      let lightGreen = Color(red: 161 / 255, green: 227 / 255, blue: 216 / 255)
      let darkGreen = Color(red: 36 / 255, green: 115 / 255, blue: 115 / 255)
      //        let darkGreen = Color(red: 6 / 255, green: 85 / 255, blue: 85 / 255)
      let mint = Color(red: 6 / 255, green: 154 / 255, blue: 142 / 255)
      let darkMint = Color(red: 0 / 255, green: 134 / 255, blue: 122 / 255)
      let grayPaper = Color(white: 0.65)
      let mustard = Color(red: 227 / 255, green: 235 / 255, blue: 127 / 255)
      let paperWidth = frameWidth * 0.145

      ZStack {
        Color(.white)
        //        // shadow
        //        Path { path in
        //          let p0 = CGPoint(x: frameWidth * 0.5, y: frameWidth * 0.35)
        //
        //          path.move(to: p0)
        //          path.addLine(to: CGPoint(x: frameWidth, y: frameWidth * 0.3))
        //          path.addLine(to: CGPoint(x: frameWidth, y: frameWidth * 0.7))
        //          path.addLine(to: CGPoint(x: frameWidth * 0.5, y: frameWidth * 0.828))
        //          path.addLine(to: p0)
        //        }
        //        .fill(Color(white: 0.8))

        Group {

          TheBox()
            .stroke(
              darkMint,
              style: StrokeStyle(
                lineWidth: frameWidth * 0.08,
                lineCap: .round,
                lineJoin: .round)
            )
            .frame(width: boxFrameWidth, height: boxFrameHeight)
          TheBox()
            .fill(darkMint)
            .frame(width: boxFrameWidth, height: boxFrameHeight)

          TheBrightSideOfTheBox()
            .stroke(
              mint,
              style: StrokeStyle(
                lineWidth: frameWidth * 0.08,
                lineCap: .round,
                lineJoin: .round)
            )
            .frame(width: boxFrameWidth, height: boxFrameHeight)
          TheBrightSideOfTheBox()
            .fill(mint)
            .frame(width: boxFrameWidth, height: boxFrameHeight)

          theHandle()
            .stroke(
              .white,
              style: StrokeStyle(
                lineWidth: frameWidth * 0.08,
                lineCap: .round,
                lineJoin: .round)
            )
            .frame(width: boxFrameWidth, height: boxFrameHeight)

          Group {
            ThePaper()
              .stroke(
                lightGreen,
                style: StrokeStyle(
                  lineWidth: paperWidth,
                  lineCap: .round,
                  lineJoin: .round)
              )
              .offset(x: frameWidth * 0.062, y: -frameWidth * 0.036)
              .frame(width: boxFrameWidth, height: boxFrameHeight)

            ThePaper()
              .stroke(
                darkGreen,
                style: StrokeStyle(
                  lineWidth: paperWidth,
                  lineCap: .round,
                  lineJoin: .round)
              )
              .frame(width: boxFrameWidth, height: boxFrameHeight)

            ThePaper()
              .stroke(
                grayPaper,
                style: StrokeStyle(
                  lineWidth: paperWidth,
                  lineCap: .round,
                  lineJoin: .round)
              )
              .offset(x: -frameWidth * 0.062, y: frameWidth * 0.036)
              .frame(width: boxFrameWidth, height: boxFrameHeight)

            ThePaper()
              .stroke(
                mustard,
                style: StrokeStyle(
                  lineWidth: paperWidth,
                  lineCap: .round,
                  lineJoin: .round)
              )
              .offset(x: -frameWidth * 0.124, y: frameWidth * 0.072)
              .frame(width: boxFrameWidth, height: boxFrameHeight)

          }
          .offset(x: frameWidth * 0.042, y: -frameWidth * 0.029)
        }
        .offset(y: frameWidth * 0.13)
      }
    }
  }
}

struct TheBox: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let width = rect.width
    let height = rect.height
    let p0 = CGPoint(x: rect.midX, y: 0)
    let p2 = CGPoint(x: width * 0.933, y: height * 0.25)
    //    let p4 = CGPoint(x: width * 0.933, y: height * 0.75)
    //    let p6 = CGPoint(x: rect.midX, y: height)
    //    let p8 = CGPoint(x: width * 0.067, y: height * 0.75)

    let p4 = CGPoint(x: width * 0.933, y: height * 0.5)
    let p6 = CGPoint(x: rect.midX, y: height * 0.75)
    let p8 = CGPoint(x: width * 0.067, y: height * 0.5)
    let p10 = CGPoint(x: width * 0.067, y: height * 0.25)
    let pCenter = CGPoint(x: rect.midX, y: rect.midY)

    path.move(to: p10)
    path.addLine(to: p8)
    path.addLine(to: p6)
    path.addLine(to: p4)
    path.addLine(to: p2)
    path.addLine(to: pCenter)
    path.addLine(to: p10)

    path.move(to: p0)
    path.addLine(to: p2)

    return path
  }
}

struct TheBrightSideOfTheBox: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let width = rect.width
    let height = rect.height
    let p0 = CGPoint(x: rect.midX, y: 0)
    let p2 = CGPoint(x: width * 0.933, y: height * 0.25)
    let p4 = CGPoint(x: width * 0.933, y: height * 0.5)
    let p6 = CGPoint(x: rect.midX, y: height * 0.75)
    let p8 = CGPoint(x: width * 0.067, y: height * 0.5)
    let p10 = CGPoint(x: width * 0.067, y: height * 0.25)
    let pCenter = CGPoint(x: rect.midX, y: rect.midY)

    path.move(to: pCenter)
    path.addLine(to: p10)
    path.addLine(to: p8)
    path.addLine(to: p6)
    path.addLine(to: pCenter)

    return path
  }
}

struct ThePaper: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let width = rect.width
    let height = rect.height
    let p1_paper1 = CGPoint(x: width * 0.327, y: height * 0.1)
    let p2_paper1_og = CGPoint(x: width * 0.759, y: height * 0.35)
    let p2_paper1 = CGPoint(x: width * 0.652, y: height * 0.287)

    path.move(to: p1_paper1)
    path.addLine(to: p2_paper1)

    return path
  }
}

struct theHandle: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let width = rect.width
    let height = rect.height

    path.move(to: CGPoint(x: width * 0.28, y: height * 0.2))
    path.addLine(to: CGPoint(x: width * 0.28, y: height * 0.40))

    return path
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
