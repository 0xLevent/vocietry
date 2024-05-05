//
//  ViewController.swift
//  vocietry
//
//  Created by Levent KINACI on 5/4/24.
//

import UIKit
import ZegoUIKit
import ZegoUIKitPrebuiltCall
import ZegoUIKitPrebuiltLiveStreaming


class ViewController: UIViewController {

    
    var userID: String = "testLevo"
       var userName: String = "levo"
       var callID: String = "testCallID"
    var appSign : String = "4b4c0e377afdf35731421d06415e2120d93713ff5e507421e4bca4781d5a0e37"
    var liveID: String = "5432"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func startLive() {
            let config: ZegoUIKitPrebuiltLiveStreamingConfig = ZegoUIKitPrebuiltLiveStreamingConfig.host()
        let liveVC: ZegoUIKitPrebuiltLiveStreamingVC = ZegoUIKitPrebuiltLiveStreamingVC(903270432, appSign: self.appSign, userID: self.userID, userName: self.userName, liveID: self.liveID, config: config)
            liveVC.modalPresentationStyle = .fullScreen
            self.present(liveVC, animated: true, completion: nil)
    }
    
    
    
    func watchLive() {
          let config: ZegoUIKitPrebuiltLiveStreamingConfig = ZegoUIKitPrebuiltLiveStreamingConfig.audience()
        let liveVC: ZegoUIKitPrebuiltLiveStreamingVC = ZegoUIKitPrebuiltLiveStreamingVC(903270432, appSign: self.appSign, userID: self.userID, userName: self.userName, liveID: self.liveID, config: config)
          liveVC.modalPresentationStyle = .fullScreen
          self.present(liveVC, animated: true, completion: nil)
    }
    
    
    @IBAction func makeLiveBtn(_ sender: Any) {
        startLive()
        
    }
    
    @IBAction func watchLiveBtn(_ sender: Any) {
watchLive()
        
    }
    
    
    
    
    @IBAction func makeCall(_ sender: Any) {
        
        let config: ZegoUIKitPrebuiltCallConfig = ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()

                let callVC = ZegoUIKitPrebuiltCallVC.init(903270432,
                                                          appSign: self.appSign,
                                                          userID: self.userID,
                                                          userName: self.userName,
                                                          callID: self.callID,
                                                          config: config)
                callVC.modalPresentationStyle = .fullScreen
                self.present(callVC, animated: true, completion: nil)
        
    }
    
    
    
    

}

