//
//  GamesView.swift
//  GameStream
//
//  Created by Ricardo Developer on 19/03/24.
//

import SwiftUI

struct GamesView: View {
    var body: some View {
        Text("Hola desde pantalla GamesView")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .onAppear(
            
                perform: {
                    print("Primer elemento del json:")
                    print("Tiulo del primer videojuego del json")
                }
            
            )
        
        
    }
}

#Preview {
    GamesView()
}
