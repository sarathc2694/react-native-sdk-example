//
//  AddMoneySDK.swift
//  RNSDK
//
//  Created by Sarath Chenthamarai on 06/06/24.
//

import UIKit
import React

@objc(AddMoneySDK)
class AddMoneySDK: NSObject, RCTBridgeModule {
  static func moduleName() -> String! {
    return "AddMoneySDK"
  }
  
  @objc func startAddMoneyJourney(_ fromViewController: UIViewController, withAccountNumber accountNumber: String, andName name: String) {
    let rnsdkViewController = RNSDKViewController()
    print("Params => accountNumber: ", accountNumber)
    print("Params => name: ", name)
    fromViewController.present(rnsdkViewController, animated: true, completion: nil)
  }
}

