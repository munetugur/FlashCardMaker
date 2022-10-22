//
//  HomeView.swift
//  RandomDealer
//
//  Created by MNT on 2022/09/12.
//

import SwiftUI

struct MainView: View {
    
    init() {
        // 背景色を指定
        UITabBar.appearance().backgroundColor = .darkGray
        // 選択していないアイテム色を指定
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Home")
                Image(systemName: "gearshape")
                    .foregroundColor(.white)
            }
            SettingView().tabItem {
                Text("Setting")
                Image(systemName: "leaf")
                    .foregroundColor(.white)
            }

        }
        // 選択したアイテム色を指定
        .accentColor(.red)
        .onAppear(){
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
