//
//  SearchView.swift
//  SheetTest
//
//  Created by Benjamin Pisano on 02/03/2021.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var viewModel: SearchViewModel
    
    var body: some View {
        VStack {
            TextField("Search", text: $viewModel.search)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            List(viewModel.songs, id: \.self) { song in
                Button(song) {
                    switch viewModel.addingMode {
                    case .playlist(onAddSong: let onAddSong):
                        onAddSong(song)
                    }
                }
            }
        }
    }
    
}
