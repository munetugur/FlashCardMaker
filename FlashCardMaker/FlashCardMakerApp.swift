//
//  FlashCardMakerApp.swift
//  FlashCardMaker
//
//  Created by MNT on 2022/10/18.
//

import SwiftUI

@main
struct FlashCardMakerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(HomeViewModel.shared)
        }
    }
}
