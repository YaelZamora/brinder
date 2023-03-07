//
//  DetailView.swift
//  brinder
//
//  Created by iOS Maquina 10 on 27/02/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Color.init(hex: 0xff262630).ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Text("BRINDER").font(Font.largeTitle).foregroundColor(.white).bold()
                        Spacer()
                    }
                    ZStack{
                        AsyncImage(url: URL(string: "https://tiendaenlinea.casaahued.com/9237-large_default/1409-jarra-2-lts-rojo.jpg"
                                           )) {
                            image in image.image?.resizable().aspectRatio(contentMode: .fill)
                        }
                    }.frame(width: 380, height: 380).background().cornerRadius(20)
                    Text("¡Iván invita!").foregroundColor(.white).font(Font.title).bold()
                    HStack{
                        Text("2 Jarras").foregroundColor(.white)
                        Image(systemName: "chevron.right").foregroundColor(.white)
                    }.frame(width: 350, height: 50)
                        .background(.red)
                        .cornerRadius(20)
                        .padding()
                    HStack{
                        Spacer()
                        AsyncImage(url: URL(string: "https://thumbs.dreamstime.com/b/handsome-young-man-wearing-casual-clothes-glasses-doing-ok-gesture-hand-smiling-eye-looking-fingers-happy-face-235184564.jpg"
                                           )) {
                            image in image.image?.resizable().aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70).cornerRadius(40)
                        }
                        Spacer()
                        Text("Iván").foregroundColor(.white).font(Font.title).bold()
                        Spacer()
                    }
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales ullamcorper urna, ut hendrerit quam vehicula eu. Vivamus eu augue a turpis egestas aliquet. Cras enim mi, gravida ac interdum vel, finibus in orci. Phasellus id lectus at ipsum faucibus pellentesque. Aliquam id mauris luctus, feugiat nisi ut, faucibus odio. Cras ipsum diam, laoreet in elit at, porta blandit sapien. Morbi suscipit dui dui, at convallis metus malesuada ac. Pellentesque volutpat quis sapien at interdum. Quisque vitae leo efficitur, vehicula urna at, auctor ante. Cras ultrices quam a lectus placerat, non sagittis augue consectetur. Sed a dapibus magna. Etiam pretium ac nisl ac efficitur. Fusce varius ultricies ex, at rutrum velit euismod eget.")
                        .foregroundColor(.white)
                        .padding([.horizontal], 10)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

//https://thumbs.dreamstime.com/b/handsome-young-man-wearing-casual-clothes-glasses-doing-ok-gesture-hand-smiling-eye-looking-fingers-happy-face-235184564.jpg
