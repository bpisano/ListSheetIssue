//
//  PlaylistCreationView.swift
//  SheetTest
//
//  Created by Benjamin Pisano on 02/03/2021.
//

import SwiftUI

struct PlaylistCreationView: View {
    
    @ObservedObject var viewModel: PlaylistCreationViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.songs, id: \.self) { song in
                    Text(song)
                }
                Button("Add Song") {
                    viewModel.sheetType = .search
                }
                .foregroundColor(.accentColor)
            }
            .navigationTitle("Playlist")
        }
        .sheet(item: $viewModel.sheetType) { _ in
            sheetView
        }
    }
    
    private var sheetView: some View {
        let addingMode: SearchViewModel.AddingMode = .playlist { addedSong in
            viewModel.songs.append(addedSong)
        }
        let sheetViewModel: SearchViewModel = SearchViewModel(addingMode: addingMode)
        return NavigationView {
            SearchView(viewModel: sheetViewModel)
                .navigationTitle("Search")
        }
    }
    
}
