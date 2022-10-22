

import Foundation


final class HomeViewModel: ObservableObject {

    
    /*----------------------------------------------------*/
    /*-                  Definition                       */
    /*----------------------------------------------------*/
    
    
    public static var shared: HomeViewModel = HomeViewModel()
    public var playListData: PlayListData
    
    
    final class PlayListData: ObservableObject {
        
        
        /*----------------------------------------------------*/
        /*-                  Definition                       */
        /*----------------------------------------------------*/
        
        ///PlayDataをリストで保持
        private var playList: [PlayDataModel] = []
        
        
        /*--------------------------------------------------------------------------------*/
        /*-                                  CLASS 0                                      */
        /*-                                 SUBROUTINE                                    */
        /*--------------------------------------------------------------------------------*/
        
        private func aaa(){
        
        }
        
        public init() { }
        
        
        /*--------------------------------------------------------------------------------*/
        /*-                                 Accessor                                      */
        /*--------------------------------------------------------------------------------*/
        
        
        public func PlayList() -> [PlayDataModel] {
            return self.playList
        }
        
        public func setPlayDate(playDataModel: PlayDataModel) {
            self.playList.append(playDataModel)
        }
        
    }
    
    
    
    /*--------------------------------------------------------------------------------*/
    /*-                                  CLASS 0                                      */
    /*-                                 SUBROUTINE                                    */
    /*--------------------------------------------------------------------------------*/
    
    
    private init() {
        
        self.playListData = PlayListData()
        
    }
    
    

}
