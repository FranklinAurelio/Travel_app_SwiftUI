//
//  CellTravelView.swift
//  travel-app-swift-ui
//
//  Created by Franklin Carvalho on 13/07/23.
//

import SwiftUI

struct CellTravelView: View {
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading){
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: 125)
            HStack{
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct CellTravelView_Previews: PreviewProvider {
    static var previews: some View {
        CellTravelView(viagem: viagens[0])
    }
}
