//
//  PrincipalView.swift
//  brinder
//
//  Created by iOS Maquina 10 on 22/02/23.
//

import SwiftUI

struct PrincipalView: View {
    
    var body: some View {
        ZStack {
            Color.init(hex: 0xff262630).ignoresSafeArea()
            ZStack{
                AsyncImage(url: URL(string: "https://tiendaenlinea.casaahued.com/9237-large_default/1409-jarra-2-lts-rojo.jpg"
                                   )) {
                    image in image.image?.resizable().aspectRatio(contentMode: .fill)
                }
                HStack{
                    Text("¡Iván invita!").font(Font.largeTitle).bold()
                }.position(x: 180, y: 20)
                HStack{
                    Text("2 Jarras").foregroundColor(.white)
                    Image(systemName: "chevron.right").foregroundColor(.white)
                }.frame(width: 150, height: 50)
                    .background(.red)
                    .cornerRadius(20)
                    .position(x:130, y: 350)
                ZStack{
                    Image(systemName: "plus").foregroundColor(.white)
                }.frame(width: 60, height: 60)
                    .background(.red)
                    .cornerRadius(30)
                    .position(x: 290, y: 350)
                    .onTapGesture {
                        //
                    }
                ZStack{
                    Image(systemName: "ellipsis").rotationEffect(.degrees(90))
                        .font(Font.custom("", size: 20))
                }.position(x: 305, y: 30).onTapGesture {
                    //
                }
            }.frame(width: 300, height: 400).background().cornerRadius(20)
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView()
    }
}
