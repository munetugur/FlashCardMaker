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

        VStack {
            
            ///ヘッダ
            HStack {
                Button("close") {
                    self.$isShow.wrappedValue.toggle()
                }
                
                Spacer()
                
                Button("save") {
                    self.$isShow.wrappedValue.toggle()
                }
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            ///カメラロール選択ボタン
            Button(action: {
                              
                            }){
                                Text("selectCameraRoll")
                                        //.fontWeight(.bold)
                                        .font(.body)
                                        .frame(width: 250, height: 40)
                                        .foregroundColor(Color(.white))
                                        .background(Color(UIColor.darkGray))
                                        .cornerRadius(10)
                            }
            
            Spacer()
            
            
        }
        .padding(.top, 30)
        

        

        
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        //SettingView()
        LibraryView()
    }
}
