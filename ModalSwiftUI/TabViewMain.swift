//
//  TabViewMain.swift
//  ModalSwiftUI
//
//  Created by Gabriela Loyola on 20/03/2023.
//

import SwiftUI
// TabView debe estar en la raíz del proyecto, cambiar el content view x este archivo en App
//TabView genera el menu de tabs abajo en la pantalla
struct TabViewMain: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
            Label("Home", systemImage: "house.fill")
            }
            VistaNueva().tabItem {
            Label("Vista Nueva", systemImage: "plus")
            }
            TercerVista().tabItem {
            Label("Segunda Vista", systemImage: "camera")
            }
        }
    }
}


