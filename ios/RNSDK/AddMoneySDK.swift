//
//  AddMoneySDK.swift
//  RNSDK
//
//  Created by Sarath Chenthamarai on 06/06/24.
//

import UIKit
import React

open class AddMoneySDK: NSObject {

   public func startAddMoneyJourney(_ fromViewController: UIViewController, withAccountNumber accountNumber: String, andName name: String) {
    let rnsdkViewController = RNSDKViewController()
    print("Params => accountNumber: ", accountNumber)
    print("Params => name: ", name)
    fromViewController.present(rnsdkViewController, animated: true, completion: nil)
  }
}

