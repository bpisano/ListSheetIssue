//
//  SearchViewModel.swift
//  SheetTest
//
//  Created by Benjamin Pisano on 02/03/2021.
//

import Foundation

final class SearchViewModel: ObservableObject {
    
    @Published var search: String = ""
    let songs: [String] = ["Within", "One more time", "Veridis quo"]
    let addingMode: AddingMode
    
    init(addingMode: AddingMode) {
        self.addingMode = addingMode
    }
    
}

extension SearchViewModel {
    
    enum AddingMode {
        
        case playlist(onAddSong: (_ song: String) -> Void)
        
    }
    
}
