import PlaygroundSupport
import SwiftUI

struct ColoredSquare: View {
    let color: Color
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: width, height: height)
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "circle.fill")
                    .frame(width: 100, height: 100)

                ZStack {
                    ColoredSquare(color: .green, width: 50, height: 50)
                    ColoredSquare(color: .red, width: 100, height: 100)
                }
            }
            .border(Color.green)

            Text("Textext")

        }
        .border(Color.blue)
    }
}

PlaygroundPage.current.setLiveView(ContentView())
