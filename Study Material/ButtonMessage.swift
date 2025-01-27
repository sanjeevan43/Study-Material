//
//  ButtonMessage.swift
//  Study Material
//
//  Created by sanjeevan on 26/01/25.
//

import SwiftUI

struct ButtonMessage: View {
    @State var isPressed: Bool = false
    var body: some View {
        
        VStack{
            
            
                HStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width:350,height: 350)
                    .shadow(radius: 5)
                    .overlay(alignment:.top) {
                        Text("Led Tv")
                    }
                    .overlay(alignment:.bottom) {
                        Text("13000$")
                    }
                    .overlay() {
                        Image("fedhar")
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
                    .rotationEffect(Angle(degrees: isPressed ? 360:0))
                    .scaleEffect(isPressed ? 0:1)
            }
            
            Button {
                isPressed.toggle()
            } label: {
                Text("Press Me")
                    .frame(width:100, height: 30)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }
        }
        .animation(.easeIn(duration: 5), value: isPressed)
    }
}

#Preview {
    ButtonMessage()
}
