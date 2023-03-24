//
//  ContentView.swift
//  ModalSwiftUI
//
//  Created by Gabriela Loyola on 16/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
//declaro variable que pasaré por parametro var Textotexfield
    @State private var textoTexfield = ""
    
    var body: some View {
        //NavigationView se hereda, no hace falta poner otro vagitationsviews en las otras vistas
        NavigationView {
            VStack{
      //en el text field se agrega el texto que se pasará
                TextField("agregue texto", text:$textoTexfield)
                NavigationLink(destination: SegundaVista(textoRecibido: textoTexfield)) { Text("Ir a Segunda vista") }
                Button("Abrir Modal "){
                    show.toggle()
                }.padding()
                    .sheet(isPresented: $show)  {
                    //aqui le digo que use lo que tiene la variable texfiel
                        ventanaModal(texto: textoTexfield)
                    }
                //ios 15
                    .navigationTitle("Navegacion")
                    .toolbar{
                        // Button{ print("algo") } label: {
                        //    Text("hola")}
                        HStack{
                            NavigationLink(destination: SegundaVista(textoRecibido: textoTexfield)) {
                                Image(systemName: "arrow.forward")
                            }
                            NavigationLink(destination: TercerVista()) {
                                Image(systemName: "line.diagonal.arrow")
                            }
                        }
                    }
                //ios 14 navigationBarTitle en esta version tenia el Bar en medio
                //ios 14 en vez de toolbar antes se usaba ya esta viejo
                // navigationBarItems(trailing: HStack{
                //     NavigationLink(destination: SegundaVista(textoRecibido: textoTexfield)) {
                //         Image(systemName: "arrow.forward")
                //     }
                // })
            }.padding(.all)
        }
    }
    
 //   struct ContentView_Previews: PreviewProvider {
 //       static var previews: some View {
 //           ContentView()
 //       }
 //   }
}
