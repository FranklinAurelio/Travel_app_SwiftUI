//
//  ContentView.swift
//  travel-app-swift-ui
//
//  Created by Franklin Carvalho on 20/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            GeometryReader{ view in
               
                VStack{
                    HeaderView()
                        .frame(width: view.size.width, height: 207, alignment: .top)
                    List(viagens){  viagem in
                        CellTravelView(viagem: viagem)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
