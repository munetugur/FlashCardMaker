

import Foundation

class PlayListModel {
    
    
    /*----------------------------------------------------*/
    /*-                  Definition                       */
    /*----------------------------------------------------*/
    
    
    ///PlayDataをリストで保持
    private var playList: [PlayDataModel] = []
    
    
    /*--------------------------------------------------------------------------------*/
    /*-                                  CLASS 0                                      */
    /*-                                 SUBROUTINE                                    */
    /*--------------------------------------------------------------------------------*/
    
    
    public init() {
    }
    
    
    /*--------------------------------------------------------------------------------*/
    /*-                                 Accessor                                      */
    /*--------------------------------------------------------------------------------*/
    
    
    public func getPlayList() -> [PlayDataModel] {
        return self.playList
    }
}
