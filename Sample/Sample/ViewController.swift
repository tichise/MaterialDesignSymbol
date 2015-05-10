//
//  ViewController.swift
//  Sample
//
//  Created by tichise on 2015年5月10日 15/05/10.
//  Copyright (c) 2015年 tichise. All rights reserved.
//

import UIKit
import MaterialDesignSymbol

class ViewController: UIViewController {
    
    @IBOutlet var sampleImageView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var symbol:MaterialDesignSymbol = MaterialDesignSymbol(text:MaterialDesignIcon.viewHeadline48px, size:30)
        var iconImage:UIImage = symbol.imageWithSize(CGSizeMake(30, 30))
        self.sampleImageView.image = iconImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

