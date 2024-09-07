//
//  ContentView.swift
//  NavegacaoMemoryLeak
//
//  Created by Rubens Parente on 06/09/24.
//

/*
 NavigationView -> É um contêner qu fornece uma barra de navegação no topo da tela. Você pode adicionar visualizações dentro do NavigationView e usar NavigationLink para navegar entre elas.
 */
import SwiftUI

struct ContentView: View {
    @StateObject private var sharedData = SharedData()
    
    var body: some View {
        
        
        NavigationView{
            VStack{
                
                TextField("Digite seu nome: ", text: $sharedData.info)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                NavigationLink(destination: SegundaView(sharedDate: sharedData)){
                    Text("Ir para segunda Tela")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
            }
            .navigationTitle("Tela 01")
        }
    }
}


#Preview {
    ContentView()
}

