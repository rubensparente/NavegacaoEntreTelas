//
//  SegundaView.swift
//  NavegacaoMemoryLeak
//
//  Created by Rubens Parente on 06/09/24.
//

import SwiftUI

struct SegundaView: View {
    @ObservedObject var sharedDate: SharedData
    
    var body: some View {
        VStack{
            Text("Informação da primeira View: ")
                .font(.headline)
                .padding()
            
            Text(sharedDate.info)
                .font(.title)
                .padding()
        }
        .navigationTitle("Segunda View")
    }
}

//#Preview {
//    SegundaView()
//}
