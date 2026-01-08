//
//  MaterialDesignSymbolTests.swift
//  MaterialDesignSymbolTests
//
//  Created by tichise on 2015/05/10.
//  Copyright (c) 2015 tichise. All rights reserved.
//

#if !os(macOS)
import UIKit
import XCTest
@testable import MaterialDesignSymbol

final class MaterialDesignSymbolTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testSymbolInitWithIcon() {
        let symbol = MaterialDesignSymbol(icon: .list48px, size: 25)
        XCTAssertEqual(symbol.fontOfSize, 25)
        XCTAssertEqual(symbol.text, MaterialDesignIconEnum.list48px.rawValue)
    }

    func testSymbolInitWithText() {
        let text = MaterialDesignIcon.list48px
        let symbol = MaterialDesignSymbol(text: text, size: 30)
        XCTAssertEqual(symbol.fontOfSize, 30)
        XCTAssertEqual(symbol.text, text)
    }

    func testAddAttribute() {
        let symbol = MaterialDesignSymbol(icon: .list48px, size: 25)
        symbol.addAttribute(attributeName: NSAttributedString.Key.foregroundColor, value: UIColor.red)

        let color = symbol.mutableTextFontAttributes[NSAttributedString.Key.foregroundColor] as? UIColor
        XCTAssertEqual(color, UIColor.red)
    }

    func testAddForegroundColorAttribute() {
        let symbol = MaterialDesignSymbol(icon: .list48px, size: 25)
        symbol.addAttribute(foregroundColor: UIColor.blue)

        let color = symbol.mutableTextFontAttributes[NSAttributedString.Key.foregroundColor] as? UIColor
        XCTAssertEqual(color, UIColor.blue)
    }

    func testImageWithSize() {
        let symbol = MaterialDesignSymbol(icon: .list48px, size: 25)
        symbol.addAttribute(foregroundColor: UIColor.red)
        let iconImage = symbol.image(size: CGSize(width: 25, height: 25))

        XCTAssertEqual(iconImage.size.width, 25)
        XCTAssertEqual(iconImage.size.height, 25)
    }

    func testImageWithDefaultSize() {
        let symbol = MaterialDesignSymbol(icon: .list48px, size: 30)
        symbol.addAttribute(foregroundColor: UIColor.red)
        let iconImage = symbol.image()

        XCTAssertEqual(iconImage.size.width, 30)
        XCTAssertEqual(iconImage.size.height, 30)
    }

    func testFont() {
        let font = MaterialDesignFont.shared.fontOfSize(20)
        XCTAssertNotNil(font)
        XCTAssertEqual(font.pointSize, 20)
    }

    func testIconEnum() {
        XCTAssertFalse(MaterialDesignIconEnum.list48px.rawValue.isEmpty)
        XCTAssertEqual(MaterialDesignIconEnum.list48px.rawValue.count, 1)
    }
}
#endif
