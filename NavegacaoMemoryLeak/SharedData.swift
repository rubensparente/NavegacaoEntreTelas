//
//  SharedData.swift
//  NavegacaoMemoryLeak
//
//  Created by Rubens Parente on 06/09/24.
//

import Foundation
import SwiftUI
import Combine

class SharedData: ObservableObject {
    @Published var info: String = ""
}
