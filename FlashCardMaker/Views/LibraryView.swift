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
                
                ZStack {
                    ///リスト
                    PlayListView()
                    
                    ///フローティングボタン
                    FloatingButtonView(isShow: $isSetting)
                }
            }
            .sheet(isPresented: $isSetting){
                RegistrationView(isShow: $isSetting)
            }
        }
    }
}


struct PlayListView: View {
    

    var body: some View {
     
        ScrollView{
            ForEach(0..<15  , id: \.self) {_ in
                Divider()
                
                HStack{
                    NavigationLink(destination: PlayView()) {
                        
                        PlayDataView()
                        
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

struct PlayDataView: View {
    
    
    var body: some View {
        
        HStack {
            
            ///moveのキャプチャー画像
            Image(systemName: "gear")
            
            VStack {
                
                HStack{
                    Text("Title........")
                    Spacer()
                }
                
                HStack{
                    Text("Explain.----------------")
                    Spacer()
                }
            }
            
            ///設定アイコン
            Image(systemName: "leaf")
        }
        .frame(minWidth: 300,maxWidth: .infinity,minHeight: 70,maxHeight: 100)
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
                .shadow(color: .gray, radius: 1, x: 1, y: 1)
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

