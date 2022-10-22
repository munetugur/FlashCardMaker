//
//  ContentView.swift
//  RandomDealer
//
//  Created by MNT on 2022/09/12.
//

import SwiftUI
import Combine

struct RegistrationView: View {
    
    
    @EnvironmentObject private var homeViewModel: HomeViewModel
    private let playDataModel: PlayDataModel = PlayDataModel()
    
    @State public var movieUrl: [URL]?
    
    ///タイトル入力
    @State private var title: String = "title"
    private let maxTitleLength: Int = 10
    
    ///サブタイトル入力
    @State private var subTitle: String = "subTitle"
    private let maxSubTitleLength: Int = 10
    
    @Binding public var isShow: Bool
    @State private var isShowAlert: Bool = false
    @State private var isPhotoLibraryMoviePickerView = false
    

    var body: some View {
        
        NavigationView{
            VStack {
                
                ///ヘッダ
                HStack {
                    ///キャンセルボタン
                    Button("cancel") {
                        self.$isShow.wrappedValue.toggle()
                    }
                    
                    Spacer()
                    
                    ///保存ボタン
                    Button("save") {
                
                        //playDataのデータを格納
                        self.playDataModel.setTitle(title: self.title)
                        self.playDataModel.setSubTitle(subTitle: self.subTitle)
                        self.playDataModel.setPlayMovieUrl(playMovieUrl: self.movieUrl)
                        
                        //playDataのバリデーション
                        if self.playDataModel.validation() {
                            //playListにデータを追加
                            HomeViewModel.shared.playListData.setPlayDate(playDataModel: self.playDataModel)
                            self.$isShow.wrappedValue.toggle()
                        }
                        else {
                            self.isShowAlert.toggle()
                        }
                    }
                    .alert(isPresented: $isShowAlert) {
                        Alert(title: Text("pleaseInputValue"),
                             message: Text("pleaseInputValueDetail"))
                    }
                }
                .padding(.horizontal, 30)

                ///タイトル入力
                HStack {
                    Text("title :")
                        .font(.title2)
                        .padding()
                    
                    TextEditor(text: self.$title)
                        .frame(width: .infinity, height: 35)
                        .padding(.horizontal)  // 余白を追加
                        .border(Color.gray, width: 1)
                        .onReceive(Just(self.title)) { _ in
                            if self.title.count > self.maxTitleLength {
                                self.title = String(self.title.prefix(self.maxTitleLength))
                            }
                        }
                }
                
                ///サブタイトル入力
                HStack {
                    Text("subTitle :")
                        .font(.title2)
                        .padding()
                    
                    TextEditor(text: self.$subTitle)
                        .frame(width: .infinity, height: 35)
                        .padding(.horizontal)  // 余白を追加
                        .border(Color.gray, width: 1)
                        .onReceive(Just(self.title)) { _ in
                            if self.title.count > self.maxTitleLength {
                                self.title = String(self.title.prefix(self.maxTitleLength))
                            }
                        }
                }
                
                Divider()
                
                ///動画選択のためのカメラロール起動
                Button(
                    action: {
                        self.isPhotoLibraryMoviePickerView.toggle()
                    },
                    label: {
                        Text("selectCameraRoll")
                        .font(.body)
                        .frame(width: 250, height: 40)
                        .foregroundColor(Color(.white))
                        .background(Color(UIColor.darkGray))
                        .cornerRadius(10)
                        .padding(.top, 30)
                    }
                )
                .fullScreenCover(isPresented: $isPhotoLibraryMoviePickerView) {
                    PhotoLibraryMoviePickerView(movieUrl: $movieUrl)
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
        RegistrationView(movieUrl: [URL](), isShow: .constant(true))
    }
}
