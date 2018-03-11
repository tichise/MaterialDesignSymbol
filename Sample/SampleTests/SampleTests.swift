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
        
        let symbol:MaterialDesignSymbol = MaterialDesignSymbol(text:(MaterialDesignIcon.list48px as NSString) as String, size:25)
        symbol.addAttribute(attributeName: NSAttributedStringKey.foregroundColor, value: UIColor.red)
        let iconImage:UIImage = symbol.image(size:CGSize(width: 25, height: 25),
        
        XCTAssertTrue(iconImage.size.width > 0)
        XCTAssertTrue(iconImage.size.height > 0)
    }
    
    func testFont() {
        let titleLabel:UILabel = UILabel.init()
        titleLabel.font = MaterialDesignFont.fontOfSize(20)
        titleLabel.text = MaterialDesignIcon.list48px
        
        XCTAssertEqual(titleLabel.text?.count, 1)
    }
    
}
