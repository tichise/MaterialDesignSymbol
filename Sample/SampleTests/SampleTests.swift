//
//  SampleTests.swift
//  SampleTests
//
//  Created by tichise on 2015年5月10日 15/05/10.
//  Copyright (c) 2015年 tichise. All rights reserved.
//

import UIKit
import XCTest
import MaterialDesignSymbol

class SampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testImage() {
        
        let symbol:MaterialDesignSymbol = MaterialDesignSymbol(text:MaterialDesignIcon.list48px, size:25)
        symbol.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor())
        let iconImage:UIImage = symbol.imageWithSize(CGSize(width: 25, height: 25))
        
        XCTAssertTrue(iconImage.size.width > 0 && iconImage.size.height > 0)
    }
    
    func testFont() {
        let titleLabel:UILabel = UILabel.init()
        titleLabel.font = MaterialDesignFont.fontOfSize(20)
        titleLabel.text = MaterialDesignIcon.list48px
        
        XCTAssertEqual(titleLabel.text?.characters.count, 1)
    }
    
}
