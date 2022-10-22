

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
    
    public func validation() -> Bool {
        ///全部の変数に対して入力値の正したを確認すべきだが、
        ///今回はURLリストのnil確認のみ実施する。
        guard let playMovieUrl = self.playMovieUrl else {
            return false
        }
        
        //少なくとも動画データを一つは登録してもらう。
        if playMovieUrl.count == 0 {
            return false
        }
        
        return true
    }
    
    
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
    
    
    public func Title() -> String {
        return self.title
    }
    
    public func SubTitle() -> String {
        guard let subTitle = self.subTitle else { return "" }
        return subTitle
    }
    
    public func Speed() -> Double {
        return self.speed
    }
    
    public func PlayMode() -> Utility.PlayModeKind {
        return self.playMode
    }
    
    public func PlayMovieUrl() -> [URL] {
        guard let playMovieUrl = self.playMovieUrl else { return [URL]()}
        return playMovieUrl
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
    
    public func setPlayMode(mode: Utility.PlayModeKind) {
        self.playMode = mode
    }
    
    public func setPlayMovieUrl(playMovieUrl: [URL]?) {
        self.playMovieUrl =  playMovieUrl
    }
}
