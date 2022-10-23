
import SwiftUI
import AVKit

struct PlayView: View {
    @Environment(\.dismiss) private var dismiss
    @State var isPlay: Bool = false
    @ObservedObject public var playData: PlayDataModel
    @State var movieNum: Int = 0
    
    var body: some View {
    
       
        VStack {
            Image("test")
            
            VideoPlayer(player: AVPlayer(url: playData.PlayMovieUrl()[self.movieNum]))
            
            Spacer()
            
            
            HStack{
                Text("\(playData.Title())")
                Spacer()
            }
            
            HStack{
                Text("\(playData.SubTitle())")
                Spacer()
            }
            
            HStack {
                
                Image(systemName: "backward.end")
                    .font(.system(size: 60))
                
                Spacer()
                
                Button(
                    action: {
                        self.isPlay.toggle()
                    },
                    label: {
                        if self.isPlay {
                            Image(systemName: "pause")
                                .font(.system(size: 60))
                                .foregroundColor(.white)
                        }
                        else {
                            Image(systemName: "play")
                                .font(.system(size: 60))
                                .foregroundColor(.white)
                        }
                            
                })
                
                Spacer()
                
                Button(
                    action: {

                    },
                    label: {
                        Image(systemName: "forward.end")
                            .font(.system(size: 60))
                    }
                )
                
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
        

        
    }
}

//struct PlayView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlayView()
//    }
//}

