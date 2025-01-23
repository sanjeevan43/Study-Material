import SwiftUI

struct PRO: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<10) { _ in
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(0..<10) { _ in
                                        VStack {
                                            Image("fedhar")
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
                                    ForEach(0..<10) { _ in
                                        VStack {
                                            Image("blode bard")
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
            .frame(width: geometry.size.width, height: geometry.size.height)         }
    }
}

#Preview {
    PRO()
}
