//
//  FontView.swift
//  brinder
//
//  Created by iOS Maquina 10 on 20/02/23.
//

import SwiftUI

struct FontView: View {
    var body: some View {
        Text("May the Force be with you")
            .font(.custom("Starjedi", size: 30))
    }
}

struct FontView_Previews: PreviewProvider {
    static var previews: some View {
        FontView()
    }
}
