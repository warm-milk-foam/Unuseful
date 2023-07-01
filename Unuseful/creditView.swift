//
//  creditView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI

struct creditView: View {
    var body: some View {
        VStack{
            
            Text("Credits:")
                .bold()
                .font(.largeTitle)
            Group{
                Text("Photos Tab: Hongyu")
                    .font(.title2)
                Text("Photos from: The SAP community")
                Text("")//Hongyu you  can add credits here
            }
            Group{
                Text("Saumil says: Thet Pai")
                    .font(.title2)
                Text("Messages from: #bestof")
            }
            Group{
                Text("Home tab: Thet Pai")
                    .font(.title2)
                Text("Canon event template: The projecttian on YouTube")
                Text("Meme made by: Thet Pai")
            }
            Group{
                Text("Quotes tab: Ingo")
                    .font(.title2)
                Text("")//Ingo you can add credits here
            }
            Text("Credits tab: Thet Pai (again)")
                .font(.title2)
            Spacer()
        }
        
    }
}

struct creditView_Previews: PreviewProvider {
    static var previews: some View {
        creditView()
    }
}
