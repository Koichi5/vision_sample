//
//  MusicAppContentView.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/14.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct MusicAppContentView: View {
    var body: some View {
        NavigationSplitView {
//            Side View
            MusicAppSideBarView()
        } detail: {
//            Main View
            AlbumsView()
        }
    }
}

#Preview {
    MusicAppContentView()
}

struct AlbumsView: View {
    @State private var searchText: String = ""
    let colums: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        ScrollView {
            TextField("Search in Albums", text: $searchText)
                .textFieldStyle(.roundedBorder)
            LazyVGrid(columns: colums, spacing: 20) {
                ForEach(musicAppAlbums) { album in
                    Button(action: {}) {
                        VStack(alignment: .leading) {
                            AsyncImage(url: URL(string: album.image)) { image in
                                image.resizable()
                            } placeholder: {
                                Rectangle()
                            }
                            .aspectRatio(1, contentMode: .fill)
                            .scaledToFit()
                            .cornerRadius(10)
                            Text(album.title)
                                .lineLimit(1)
                            Text(album.subTitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit(1)
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.horizontal, 24)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack (alignment: .leading) {
                    Text("Albums")
                        .font(.largeTitle)
                    Text("48 songs")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}) {
                    Image(systemName: "line.3.horizontal.decrease")
                }
            }
        }
    }
}
