//
//  DataSetView.swift
//  RandomDealer
//
//  Created by MNT on 2022/09/13.
//

import SwiftUI

struct DataSetView: View {
    var body: some View {
        VStack{
            
            GeometryReader { geometry in
                        ScrollView {
                            VStack(spacing: 0) {
                                ForEach(1..<11) { _ in
                                    HStack(spacing: 0) {
                                        ForEach(1..<6) { _ in
                                            Image(systemName: "leaf")
                                                .resizable()
                                                .frame(width: geometry.frame(in: .global).width/5 , height: geometry.frame(in: .global).width/5)
                                        }
                                        
                                    }
                                    .listRowInsets(EdgeInsets())
                                }
                            }
                        }
                    }
            
//            GeometryReader { geometry in
//                List {
//                    ForEach(1..<11) { _ in
//                        HStack(spacing: 2) {
//                            ForEach(1..<6) { _ in
//                                Image(systemName: "leaf")
//                                    .resizable()
//                                    .frame(width: geometry.frame(in: .global).width/5 , height: geometry.frame(in: .global).width/5)
//                            }
//                        }
//                        .listRowInsets(EdgeInsets())
//                    }
//                }
//            }
        }
    }
}

struct DataSetView_Previews: PreviewProvider {
    static var previews: some View {
        DataSetView()
    }
}
