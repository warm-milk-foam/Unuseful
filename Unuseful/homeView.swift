//
//  homeView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI

struct homeView: View {
    @State private var angle = 0.0
    @State private var cheese = 0.0
    @State private var wid = 347.0
    @State private var hei = 512.0
    @State private var yLo1 = 0.0
    @State private var yLo2 = -600.0
    var body: some View {
        ZStack{
            
            VStack{
                Image("cookies")
                
                Button{
                    if cheese == 0{
                        withAnimation(.linear(duration: 5.0)){
                            angle += 80.0
                            cheese += 1.0
                            yLo2 = 0.0
                        }
                    }
                    
                }label: {
                    Text("Accept all cookies")
                        .font(.largeTitle)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }
            }
            .frame(width:wid,height:hei)
            .scaledToFit()
            .rotation3DEffect(Angle(degrees: angle), axis: (x:angle,y:0,z:0))
            .offset(y: yLo1)
            Image("tablecanon")
                .resizable()
                .scaledToFit()
                .offset(y:yLo2)
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
