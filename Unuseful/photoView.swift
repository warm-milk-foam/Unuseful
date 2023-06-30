//
//  photoView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
var pictures = [Image("froggy"), Image("valid"), Image("thet pai"), Image("st josephs"),  Image("flashbang"), Image("blinded"), Image("lmao"), Image("HAO yuan"), Image("camare"), Image("darter"), Image("why not"), Image("this tree got bite"), Image("who is this"), Image("mr thieffffff"), Image("no bchs?"),]
struct photoView: View {
    var body: some View {
        VStack {
            pictures[0] // test image
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.system(size: 40))
        }
        .padding()
    }
}

struct photoView_Previews: PreviewProvider {
    static var previews: some View {
        photoView()
    }
}
