//
//  ContentView.swift
//  RandomDealer
//
//  Created by MNT on 2022/09/12.
//

import SwiftUI

struct SettingView: View {
    
    
    @Binding public var isShow: Bool
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                ///ヘッダ
                HStack {
                    Button("close") {
                        self.$isShow.wrappedValue.toggle()
                        print("close処理")

                    }
                    
                    Spacer()
                    
                    Button("save") {
                        self.$isShow.wrappedValue.toggle()
                        print("save処理")
                    }
                }
                .padding(.horizontal, 30)

                ///ナビゲーションリンク：動画選択のためのカメラロール起動
                NavigationLink(destination: TestView()) {
                    Text("selectCameraRoll")
                    .font(.body)
                    .frame(width: 250, height: 40)
                    .foregroundColor(Color(.white))
                    .background(Color(UIColor.darkGray))
                    .cornerRadius(10)
                    .padding(.top, 30)
                }
                
                Spacer()
            }
            .padding(.top, 30)
        }
        .padding(.horizontal)
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        //SettingView(isShow: .constant(true))
        ContentView()
    }
}
