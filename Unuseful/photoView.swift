//
//  photoView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
var pictures = [Image("tablecanon"), Image("froggy"), Image("valid"), Image("thet pai"), Image("st josephs"),  Image("flashbang"), Image("blinded"), Image("lmao"), Image("HAO yuan"), Image("camare"), Image("darter"), Image("why not"), Image("this tree got bite"), Image("who is this"), Image("mr thieffffff"), Image("no bchs?"),]

struct photoView: View {
    @State private var wawa = 0
    @State private var currentPicture = pictures.randomElement()
    var body: some View {
        VStack {
            Text("beautiful pictures to calm the soul😌")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            currentPicture! // test image
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            Button {
                    wawa += 1
                    print("help")
                currentPicture = pictures.randomElement()
            } label: {
                Image("3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height:150)
                
            }
        }
        .padding()
    }
}

struct photoView_Previews: PreviewProvider {
    static var previews: some View {
        photoView()
    }
}
