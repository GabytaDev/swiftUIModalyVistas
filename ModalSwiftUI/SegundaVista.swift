//
//  SegundaVista.swift
//  ModalSwiftUI
//
//  Created by Gabriela Loyola on 19/03/2023.
//

import SwiftUI

struct SegundaVista: View {
var textoRecibido: String
    var body: some View {
        VStack {
            Text("Segunda vista")
                .navigationTitle(textoRecibido)
                .padding()
            NavigationLink(destination: TercerVista()){
                Text("Ir a tercer vista")
                
            }
        }
        
    }
}


