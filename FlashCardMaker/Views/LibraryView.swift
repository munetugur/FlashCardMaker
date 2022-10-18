//
//  LibraryView.swift
//  RandomDealer
//
//  Created by MNT on 2022/09/12.
//

import SwiftUI

struct LibraryView: View {
    
    
    @State private var isSetting: Bool = false
    
    
    var body: some View {
        
        NavigationView {
            VStack{
                ///ヘッダー
                HStack{
                    Text("Library")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical)
                
                ///リスト
                LibraryListView()

                Spacer()
                
                ///フローティングボタン
                FloatingButtonView(isShow: $isSetting)
            }
            .sheet(isPresented: $isSetting){
                SettingView(isShow: $isSetting)
            }
        }
    }
}


struct LibraryListView: View {
    var body: some View {
        
        ScrollView{
            ForEach(0..<15  , id: \.self) {_ in
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
    }
}


struct FloatingButtonView: View {
    
    
    @Binding public var isShow: Bool
    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Button(action: {
                    print("Tapped!!")
                    self.isShow.toggle()
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                })
                .frame(width: 60, height: 60)
                .background(Color.cyan)
                .cornerRadius(30.0)
                .shadow(color: .gray, radius: 3, x: 3, y: 3)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.0, trailing: 16.0))
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
