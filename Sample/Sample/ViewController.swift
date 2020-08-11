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

    @IBOutlet var sampleImageView: UIImageView!
    @IBOutlet var sampleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // UIImage
        self.sampleImageView.image = MaterialDesignSymbol(icon: .viewHeadline48px, size: 30).image()

        // String
        sampleLabel.font = MaterialDesignFont.fontOfSize(20)
        sampleLabel.text = MaterialDesignIconEnum.clear48px.rawValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
