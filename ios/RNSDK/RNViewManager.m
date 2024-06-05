//
//  RNViewManager.m
//  RNSDK
//
//  Created by Sarath Chenthamarai on 03/06/24.
//

#import "RNViewManager.h"
#import <React/RCTRootView.h>

@implementation RNViewManager

+ (UIView *)getReactNativeView {
  NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource: @"rnsdk" withExtension:@"jsbundle"];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"RNSDKExample" initialProperties:nil launchOptions:nil];
  return rootView;
}

@end
