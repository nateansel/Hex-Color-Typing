//
//  ViewController.swift
//  HexColorTyping
//
//  Created by Nathan Ansel on 12/10/15.
//  Copyright © 2015 Nathan Ansel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var hexLabel: UILabel!
  @IBOutlet weak var colorView: UIView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    UIApplication.sharedApplication().statusBarStyle = .LightContent
    colorView.backgroundColor = UIColor.blackColor()
  }

  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  @IBAction func buttonPressed(sender: AnyObject) {
    let keyButton = sender as! UIButton
    let keyButtonTitle = keyButton.titleLabel?.text!
    let newStartIndex = hexLabel.text!.startIndex.advancedBy(2)
    let newHexLabelText = "#" + hexLabel.text!.substringFromIndex(newStartIndex) + keyButtonTitle!
    hexLabel.text = newHexLabelText
    colorView.backgroundColor = UIColor.init(hex: newHexLabelText)
  }
}

