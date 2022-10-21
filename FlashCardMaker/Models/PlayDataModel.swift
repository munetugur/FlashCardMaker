

import Foundation

class PlayDataModel {
    
    
    /*----------------------------------------------------*/
    /*-                  Definition                       */
    /*----------------------------------------------------*/
    
    
    ///タイトル
    private var title: String
    
    ///サブタイトル
    private var subTitle: String?
    
    ///再生スピード
    private var speed: Double
    
    ///再生モード
    private var playMode: Utility.PlayModeKind

    ///再生動画のURLリスト
    private var playMovieUrl: [URL]?
    
    
    /*--------------------------------------------------------------------------------*/
    /*-                                  CLASS 0                                      */
    /*-                                 SUBROUTINE                                    */
    /*--------------------------------------------------------------------------------*/
    
    
    public init() {
        self.title = ""
        self.subTitle = ""
        self.speed = 1.0
        self.playMode = Utility.PlayModeKind.NOMAL
        self.playMovieUrl = [URL(fileURLWithPath: String())]
    }
    
    
    /*--------------------------------------------------------------------------------*/
    /*-                                 Accessor                                      */
    /*--------------------------------------------------------------------------------*/
    
    
    public func getTitle() -> String {
        return self.title
    }
    
    public func getSubTitle() -> String {
        guard let subTitle = self.subTitle else { return "" }
        return subTitle
    }
    
    public func getSpeed() -> Double {
        return self.speed
    }
    
    public func getPlayMode() -> Utility.PlayModeKind {
        return self.playMode
    }
    
    public func setTitle(title: String) {
        self.title = title
    }
    
    public func setSubTitle(subTitle: String) {
        self.subTitle = subTitle
    }
    
    public func setSpeed(speed: Double) {
        self.speed = speed
    }
    
    public func getPlayMode(mode: Utility.PlayModeKind) {
        self.playMode = mode
    }
}
