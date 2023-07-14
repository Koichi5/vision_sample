//
//  MusicAppAlbumsView.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/14.
//

import SwiftUI

struct MusicAppAlbumsView: View {
    @State private var searchText: String = ""
    let colums: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        ScrollView {
            TextField("Search in Albums", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            LazyVGrid(columns: colums, spacing: 20) {
                ForEach(musicAppAlbums) { album in
                    Button(action: {}) {
                        VStack(alignment: .leading) {
                            AsyncImage(url: URL(string: album.image)) { image in
                                image.resizable()
                            } placeholder: {
                                Rectangle()
                                    .foregroundStyle(.tertiary)
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
                        .hoverEffect()
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
        .toolbar {
            ToolbarItemGroup(placement: .bottomOrnament) {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                    }
                    Button(action: {}) {
                        Image(systemName: "pause.fill")
                    }
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                    MusicAppPlayingSongCardView()
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                    }
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                    }
                    Button(action: {}) {
                        Image(systemName: "speaker.wave.3.fill")
                    }
                }
                .padding(.vertical, 8)
            }
        }
    }
    
    
    struct MusicAppPlayingSongCardView: View {
        var body: some View {
            HStack {
                AsyncImage(url: URL(string: "https://i1.sndcdn.com/artworks-000108687931-8n3xz1-t500x500.jpg")) { image in
                    image.resizable()
                } placeholder: {
                    Rectangle().foregroundStyle(.tertiary)
                }
                .frame(width: 48, height: 48)
                .cornerRadius(6)
                
                VStack(alignment: .leading) {
                    Text("夜明けと蛍")
                    Text("n-buna")
                        .foregroundStyle(.tertiary)
                }
                .frame(width: 160, alignment: .leading)
                
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                }
                .buttonBorderShape(.circle)
            }
            .padding(.all, 8)
            .background(.regularMaterial, in: .rect(cornerRadius: 14))
        }
    }
}

#Preview {
    MusicAppAlbumsView()
}
