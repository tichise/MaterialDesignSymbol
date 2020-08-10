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
        let symbol = MaterialDesignSymbol(icon: .viewHeadline48px, size: 30)
        let iconImage = symbol.image(size: CGSize(width: 30, height: 30))
        self.sampleImageView.image = iconImage

        // String
        sampleLabel.font = MaterialDesignFont.fontOfSize(20)
        sampleLabel.text = MaterialDesignIconEnum.clear48px.rawValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
