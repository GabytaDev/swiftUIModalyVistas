//
//  ventanaModal.swift
//  ModalSwiftUI
//
//  Created by Gabriela Loyola on 16/03/2023.
//

import SwiftUI

struct ventanaModal: View {
    @Environment(\.presentationMode) var cerrar
//variable texto indica que va a venir un string
    var texto : String
    var body: some View {
        ZStack
        {
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack {
      //aca en el titulo paso la variable que va a venir por parametro
            Text(texto)
                .font(.title)
                .foregroundColor(.white)
                .bold()
                Button("cerrar"){
                    cerrar.wrappedValue.dismiss()
                }
                .padding(.all)
                .border(Color.white, width: 1)
            
           }
        }
    }
}


