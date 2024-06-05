//
//  RNSDKViewController.swift
//  RNSDK
//
//  Created by Sarath Chenthamarai on 03/06/24.
//

import Foundation
import React

open class RNSDKViewController: UIViewController {
  override public func loadView() {
    let bundle: Bundle = Bundle.main
    var bundleURL = bundle.resourceURL
    
    if (bundleURL != nil) {
      
      bundleURL!.appendPathComponent("RNSDK/rnsdk.jsbundle")
      
      let view = RCTRootView(bundleURL: bundleURL!, moduleName: "RNSDKExample", initialProperties: [:])
      self.view = view
    }
  }
}
