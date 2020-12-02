//
//  ViewController.swift
//  test_ironsouce_swift
//
//  Created by thomas ledesert on 02/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        IronSource.initWithAppKey("b6bd7235")
        ISIntegrationHelper.validateIntegration()
    }
    
    func displayVideo(){
        NSLog("trigger displayVideo")
        
        IronSource.setRewardedVideoDelegate(self)
    }

    @IBAction func buttonClick(_ sender: Any) {
        displayVideo();
    }
    
}
extension ViewController:ISRewardedVideoDelegate{
    func rewardedVideoHasChangedAvailability(_ available: Bool) {
        //
    }
    
    func didReceiveReward(forPlacement placementInfo: ISPlacementInfo!) {
        //
    }
    
    func rewardedVideoDidFailToShowWithError(_ error: Error!) {
        //
        NSLog("erreur chargement video")
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
}

