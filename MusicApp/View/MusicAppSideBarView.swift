//
//  MusicAppSideBarView.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/14.
//

import SwiftUI

struct MusicAppSideBarView: View {
    var body: some View {
        List (musicAppSideMenuItems) { item in
            NavigationLink(value: item.self) {
                Label(
                    item.name,
                    systemImage: item.icon
                )
                .foregroundStyle(.primary)
            }
            .navigationDestination(for: MusicAppSideMenuItem.self) { item in
                Text(item.name)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
}


#Preview {
    MusicAppSideBarView()
}
