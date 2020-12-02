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
        IronSource.setRewardedVideoDelegate(self)
        IronSource.setInterstitialDelegate(self)
        
        IronSource.initWithAppKey("e210f449", adUnits: [IS_REWARDED_VIDEO, IS_INTERSTITIAL])
        ISIntegrationHelper.validateIntegration()
        IronSource.loadInterstitial();
    }
    
    func displayVideo(){
        NSLog("trigger displayVideo")
        IronSource.showRewardedVideo(with: self)
    }

    @IBAction func videoClick(_ sender: Any) {
        displayVideo();
    }
    
    func displayInterstitial(){
        NSLog("trigger displayIntestitial %@", IronSource.hasInterstitial())
        IronSource.showInterstitial(with: self)
    }

    @IBAction func interstitialClick(_ sender: Any) {
        displayInterstitial();
    }
    
}
extension ViewController:ISInterstitialDelegate {
    func interstitialDidLoad() {
        NSLog("interstitialDidLoad")
    }
    
    func interstitialDidFailToLoadWithError(_ error: Error!) {
        NSLog("interstitialDidFailToLoadWithError")
    }
    
    func interstitialDidOpen() {
        
    }
    
    func interstitialDidClose() {
        
    }
    
    func interstitialDidShow() {
        
    }
    
    func interstitialDidFailToShowWithError(_ error: Error!) {
        
    }
    
    func didClickInterstitial() {
        
    }
    
    
}
extension ViewController:ISRewardedVideoDelegate{
    func rewardedVideoHasChangedAvailability(_ available: Bool) {
        NSLog("trigger displayVideo")
        //
    }
    
    func didReceiveReward(forPlacement placementInfo: ISPlacementInfo!) {
        NSLog("trigger displayVideo")
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

