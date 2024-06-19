//
//  RNSDKViewController.swift
//  RNSDK
//
//  Created by Sarath Chenthamarai on 03/06/24.
//

import Foundation
import React

@objc(RNSDKViewController)
open class RNSDKViewController: UIViewController {
  
  private var customData: [String: Any]
  
  @objc public init(customData: [String: Any]) {
    self.customData = customData
    super.init(nibName: nil, bundle: nil)
  }
  
  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override public func loadView() {
    let bundle: Bundle = Bundle.main
    var bundleURL = bundle.resourceURL
    
    if (bundleURL != nil) {
      
      bundleURL!.appendPathComponent("RNSDK.bundle/rnsdk.jsbundle")
      let bridge = RCTBridge(bundleURL: bundleURL!, moduleProvider: nil, launchOptions: nil)
      let rootView = RCTRootView(bridge: bridge!, moduleName: "RNSDKExample", initialProperties: customData)
      self.view = rootView
    }
  }
}
