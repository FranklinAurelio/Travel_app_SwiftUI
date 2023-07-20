//
//  ContentView.swift
//  travel-app-swift-ui
//
//  Created by Franklin Carvalho on 20/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
            
        NavigationView{
            GeometryReader{ view in
                VStack{
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 207 : 310, alignment: .top)
                    List(viagens){  viagem in
                        NavigationLink(destination: MapView(coordenada: viagem.localizacao).navigationTitle("Localization"))
                        {
                            CellTravelView(viagem: viagem)
                        }

                    }.navigationTitle("")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
