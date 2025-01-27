import SwiftUI
struct image_scroll: View {
    @State private var showImg = false
    @State var isPressed: Bool = false
    var body: some View {
        VStack {
            Button {
                showImg.toggle()
            } label: {
                Text("photo")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .multilineTextAlignment(TextAlignment.trailing)
            }
            if showImg {
                img()
            }
        }
    }
    func img() -> some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<5) { _ in
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(0..<5) { _ in
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
                                    ForEach(0..<5) { _ in
                                        VStack {
                                            Image("blode_bard")
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
                                            Image("wallpeppar")
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
#Preview {
    image_scroll()
}
