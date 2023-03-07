//
//  ContentView.swift
//  brinder
//
//  Created by iOS Maquina 10 on 20/02/23.
//

import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
}

struct ContentView: View {
    @State private var nombre: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack{
            Color.init(hex: 0xff262630).ignoresSafeArea()
            Circle().foregroundColor(.purple)
                .frame(width: 250)
                .position(x: 160, y: 600)
            VStack{
                Text("Brinder")
                    .foregroundColor(.purple)
                    .font(Font.custom("", size: 80))
                    .blur(radius: 1)
                    .shadow(color: .purple, radius: 20)
                VStack{
                    TextField("Nombre", text: $nombre)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    TextField("Contraseña", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Text("LOG IN").padding([.horizontal], 100)
                        .padding()
                        .foregroundColor(.white)
                        .font(Font.headline)
                        .buttonStyle(.bordered).background(.indigo).cornerRadius(20)
                }.frame(width: 300, height: 400)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                                    .stroke(.white, lineWidth: 1)
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
