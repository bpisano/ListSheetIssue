//
//  PlaylistCreationViewModel.swift
//  SheetTest
//
//  Created by Benjamin Pisano on 02/03/2021.
//

import Foundation

final class PlaylistCreationViewModel: ObservableObject {
    
    @Published var sheetType: SheetType?
    @Published var songs: [String] = []
    
}

extension PlaylistCreationViewModel {
    
    enum SheetType: String, Identifiable {
        
        case search
        
        var id: String {
            rawValue
        }
        
    }
    
}
