//
//  ViewController.swift
//  iOSEngineerNight
//
//  Created by Koji Murata on 2015/10/21.
//  Copyright © 2015年 Koji Murata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

  }
  
  @IBOutlet weak var progressView: UIProgressView!

  @IBAction func push() {
    progressView.progress += 0.1
    if progressView.progress == 1 { progressView.progress = 0 }
  }
  
  // MARK: - guard
  
  enum Error: ErrorType {
    case Nil
  }
  
  private func foo(hoge: String?) throws -> String {
    if let h = hoge { return h }
    throw Error.Nil
  }
  
  private func bar(hoge: String?) throws -> String {
    guard let hoge = hoge else { throw Error.Nil }
    return hoge
  }
  
  
  // MARK: - デフォルト引数
  
  private func baz(hoge: String? = nil) {
    print(hoge)
  }
  
}