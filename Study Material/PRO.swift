import SwiftUI

struct PRO: View {
    @State private var buttonClicked = false // State to track button clicks

    var body: some View {
        VStack {
           

            GeometryReader { geometry in
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(0..<5) { _ in
                            VStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 20) {
                                        ForEach(0..<5) { _ in
                                            VStack {
                                                Image(buttonClicked ? "wallpeppar" : "fedhar")
                                                    .resizable()
                                                    .frame(width: 100, height: 100)
                                                    .clipShape(Circle())
                                            }
                                        }
                                    }
                                }
                                .padding()
                            }
                            VStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 20) {
                                        ForEach(0..<5) { _ in
                                            VStack {
                                                Image(buttonClicked ? "blode bard" : "fedhar")
                                                    .resizable()
                                                    .frame(width: 100, height: 100)
                                                    .clipShape(Circle())
                                            }
                                        }
                                    }
                                }
                                .padding()
                            }
                            VStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 20) {
                                        ForEach(0..<5) { _ in
                                            VStack {
                                                Image(buttonClicked ? "fedhar" : "wallpeppar")
                                                    .resizable()
                                                    .frame(width: 100, height: 100)
                                                    .clipShape(Circle())
                                            }
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

#Preview {
    PRO()
}
