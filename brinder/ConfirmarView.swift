//
//  ConfirmarView.swift
//  brinder
//
//  Created by iOS Maquina 10 on 27/02/23.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct ConfirmarView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.85341, longitude: 2.3488), span: MKCoordinateSpan(latitudeDelta: 0.010, longitudeDelta: 0.010))
    
    let annotations = [
        City(name: "Parte 1", coordinate: CLLocationCoordinate2D(latitude: 48.85341, longitude: 2.3488)),
        City(name: "Parte 2", coordinate: CLLocationCoordinate2D(latitude: 48.85221, longitude: 2.3438))
    ]

    
    var body: some View {
        ZStack {
            Color.init(hex: 0xff262630).ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Text("BRINDER").font(Font.largeTitle).foregroundColor(.white).bold()
                    Spacer()
                }
                Map(coordinateRegion: $region, interactionModes: [.zoom], annotationItems: annotations){
                    MapMarker(coordinate: $0.coordinate)
                    }.frame(width: 400, height: 400)
                Spacer()
                Text("Está a 5 minutos de ti").foregroundColor(.white)
                    .font(Font.title2)
                    .bold()
                Spacer()
                ZStack{
                    Text("Confirmar asistencia").foregroundColor(.white).bold()
                }.frame(width: 350, height: 50)
                    .background(.indigo)
                    .cornerRadius(10)
                    .onTapGesture {
                        //
                    }
                Spacer()
            }
        }
    }
}

struct ConfirmarView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmarView()
    }
}
