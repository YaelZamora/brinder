//
//  NewProductView.swift
//  brinder
//
//  Created by iOS Maquina 10 on 27/02/23.
//

import SwiftUI

struct NewProductView: View {
    var body: some View {
        ZStack {
            Color.init(hex: 0xff262630).ignoresSafeArea()
            VStack{
                HStack {
                    Spacer()
                    Text("BRINDER").font(Font.largeTitle).foregroundColor(.white).bold()
                    Spacer()
                }
                ZStack{
                    Image(systemName: "camera.fill").font(Font.custom("", size: 150))
                }.frame(width: 350, height: 400).background(.gray).cornerRadius(20)
                HStack(spacing: 70) {
                    Menu {
                        Button {
                            // do something
                        } label: {
                            Text("Cubetas")
                        }
                        Button {
                            // do something
                        } label: {
                            Text("Jarras")
                        }
                        Button {
                            // do something
                        } label: {
                            Text("Caguamas")
                        }
                    } label: {
                        Text("Cubetas").foregroundColor(.white)
                        Image(systemName: "chevron.down").foregroundColor(.white)
                    }
                    HStack{
                        Image(systemName: "chevron.down").foregroundColor(.blue).padding()
                        Divider().overlay(.white)
                        Spacer()
                        Text("2").foregroundColor(.white)
                        Spacer()
                        Divider().overlay(.white)
                        Image(systemName: "chevron.up").foregroundColor(.blue).padding()
                    }.frame(width: 180, height: 60).overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.white)
                    )
                }.padding([.vertical], 40)
                ZStack{
                    Text("Publicar invitación")
                        .foregroundColor(.white)
                        .font(Font.title3.weight(.heavy))
                }.frame(width: 350, height: 50)
                    .background(.green)
                    .cornerRadius(10)
                    .onTapGesture {
                    //
                }
                Spacer()
            }
        }
    }
}

struct NewProductView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductView()
    }
}
