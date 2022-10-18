//
//  PlayView.swift
//  RandomDealer
//
//  Created by MNT on 2022/09/12.
//

import SwiftUI

struct PlayView: View {
    var body: some View {
        
        NavigationView {
            VStack{
                ///ヘッダー
                HStack{
                    Text("PlayList")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical)
                
                ///リスト
                ScrollView{
                    ForEach(0..<15  , id: \.self) {_ in
                        ListView()
                    }
                }

                Spacer()
            }
        }
    }
}

struct ListView: View {
    var body: some View {
        
        Divider()
        
        HStack{
            NavigationLink(destination: DataSetView()) {
                Text("Caption")
                
                Spacer()
            }
        }
        .padding(.horizontal)
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .foregroundColor(.gray)
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
