
import SwiftUI

struct PlayView: View {
    
    @State var isPlay: Bool = false
    
    
    var body: some View {
    
       
        VStack {
            Image("test")
             
            Spacer()
            
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
                
                Image(systemName: "forward.end")
                    .font(.system(size: 60))
            }
            .padding(.horizontal, 40)
            
            Spacer()
            
          
            Text("aaaa")
        }
        

        
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}

