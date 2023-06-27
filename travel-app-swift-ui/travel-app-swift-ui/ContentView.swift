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
                    VStack{
                        Text("Travels App")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Black", size: 20))
                            .padding(.top, 55)
                        Text("SPECIAL")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Book", size: 20))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                        Text("BRAZIL")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Black", size: 23))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                        
                        
                    }
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: view.size.width , height: 180, alignment: .top)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.797, saturation: 0.492, brightness: 0.835)/*@END_MENU_TOKEN@*/)
                    
                    List{
                        Text("Rio de Janeiro")
                        Text("Ceará")
                        Text("Atibaia")
                        Text("Natal")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
