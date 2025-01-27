import SwiftUI

struct ContentView: View {
    @State private var showImg = false
    @State var isPressed: Bool = false

    var body: some View {
        VStack {
            Button {
                showImg.toggle()
            } label: {
                Text("Photo")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.trailing)
                   
            }
            if showImg {
                img()
                    .rotationEffect(Angle(degrees: isPressed ? 360 : 0))
                    .scaleEffect(isPressed ? 0 : 1)
                Button {
                    isPressed.toggle()
                } label: {
                    Text("Press Me")
                        .frame(width: 100, height: 30)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                        


                }
          
                .animation(.easeIn(duration: 5), value: isPressed)
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
                            .rotationEffect(Angle(degrees: isPressed ? 360 : 0)) // Added rotation
                            .scaleEffect(isPressed ? 0 : 1) // Added scaling
                            .animation(.easeInOut(duration: 2), value: isPressed) // Added animation
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
                            .rotationEffect(Angle(degrees: isPressed ? 360 : 0)) // Added rotation
                            .scaleEffect(isPressed ? 0 : 1) // Added scaling
                            .animation(.easeInOut(duration: 2), value: isPressed) // Added animation
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
                            .rotationEffect(Angle(degrees: isPressed ? 360 : 0)) // Added rotation
                            .scaleEffect(isPressed ? 0 : 1) // Added scaling
                            .animation(.easeInOut(duration: 2), value: isPressed) // Added animation
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
    ContentView()
}
