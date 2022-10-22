import SwiftUI

struct TestView: View {

    @State private var movieUrl: [URL]
    @State private var showCameraMoviePickerView = false

    @State private var showMoviePlayerView = false

    private var canPlayVideo: Bool {
        movieUrl != nil
    }
    
    init(){
        self.movieUrl = [URL]()
    }

    var body: some View {
        VStack(spacing: 32) {
            Spacer()

            Button {
                showCameraMoviePickerView = true
            } label: {
                Text("Camera Movie Picker")
            }



            Button {
                showMoviePlayerView = true

//                guard let url = movieUrl else {
//                    return
//                }
                //print(url)
            } label: {
                Image(systemName: "play")
                    .resizable()
                    .frame(width: 50,
                           height:50)
                    .foregroundColor(canPlayVideo ? .accentColor : .gray)
            }
            .disabled(!canPlayVideo)

            Spacer()
        }
        .fullScreenCover(isPresented: $showCameraMoviePickerView) {
            //CameraMoviePickerView(movieUrl: $movieUrl)
        }
        

        
        .fullScreenCover(isPresented: $showMoviePlayerView) {
            MoviePlayerView(with: movieUrl[1])
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
