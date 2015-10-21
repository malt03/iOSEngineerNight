//
//  AppDelegate.swift
//  iOSEngineerNight
//
//  Created by Koji Murata on 2015/10/21.
//  Copyright © 2015年 Koji Murata. All rights reserved.
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    setupAudio()
    return true
  }

  private func setupAudio() {
    let session = AVAudioSession.sharedInstance()
    try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
    do {
      try session.setActive(true)
    } catch {
      print(error)
    }
  }
}

