//
//  HomeView.swift
//  RandomDealer
//
//  Created by MNT on 2022/09/12.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        // 背景色を指定
        UITabBar.appearance().backgroundColor = .darkGray
        // 選択していないアイテム色を指定
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            PlayView().tabItem {
                Text("Play")
                Image(systemName: "leaf")
                    .foregroundColor(.white)
            }
            LibraryView().tabItem {
                Text("Library")
                Image(systemName: "gearshape")
                    .foregroundColor(.white)
            }
        }
        // 選択したアイテム色を指定
        .accentColor(.red)
        .onAppear(){
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
