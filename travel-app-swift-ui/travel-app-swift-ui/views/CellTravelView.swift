//
//  CellTravelView.swift
//  travel-app-swift-ui
//
//  Created by Franklin Carvalho on 13/07/23.
//

import SwiftUI

struct CellTravelView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading){
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped()
            HStack{
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct CellTravelView_Previews: PreviewProvider {
    static var previews: some View {
        CellTravelView(viagem: viagens[0])
    }
}
