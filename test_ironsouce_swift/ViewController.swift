//
//  ViewController.swift
//  test_ironsouce_swift
//
//  Created by thomas ledesert on 02/12/2020.
//

import UIKit

class ViewController: UIViewController, ISRewardedVideoDelegate {
    func rewardedVideoHasChangedAvailability(_ available: Bool) {
        //
    }
    
    func didReceiveReward(forPlacement placementInfo: ISPlacementInfo!) {
        //
    }
    
    func rewardedVideoDidFailToShowWithError(_ error: Error!) {
        //
    }
    
    func rewardedVideoDidOpen() {
        //
    }
    
    func rewardedVideoDidClose() {
        //
    }
    
    func rewardedVideoDidStart() {
        //
    }
    
    func rewardedVideoDidEnd() {
        //
    }
    
    func didClickRewardedVideo(_ placementInfo: ISPlacementInfo!) {
        //
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func displayVideo(){
        NSLog("trigger displayVideo")
        IronSource.setRewardedVideoDelegate(self)
    }

    @IBAction func buttonClick(_ sender: Any) {
        displayVideo();
    }
    
}

