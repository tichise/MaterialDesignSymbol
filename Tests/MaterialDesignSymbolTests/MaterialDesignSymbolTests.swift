//
//  MaterialDesignSymbolTests
//
//  Created by Claude on 2024.
//

#if canImport(UIKit)
import XCTest
@testable import MaterialDesignSymbol

@MainActor
final class MaterialDesignSymbolTests: XCTestCase {

    // MARK: - MaterialDesignSymbol Tests

    func testInitWithIcon() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 24)
        let image = symbol.image()

        XCTAssertEqual(image.size.width, 24)
        XCTAssertEqual(image.size.height, 24)
    }

    func testInitWithText() {
        let icon = MaterialDesignIconEnum.settings48px
        let symbol = MaterialDesignSymbol(text: icon.rawValue, size: 32)
        let image = symbol.image()

        XCTAssertEqual(image.size.width, 32)
        XCTAssertEqual(image.size.height, 32)
    }

    func testImageWithCustomSize() {
        let symbol = MaterialDesignSymbol(icon: .search48px, size: 24)
        let customSize = CGSize(width: 48, height: 48)
        let image = symbol.image(size: customSize)

        XCTAssertEqual(image.size.width, 48)
        XCTAssertEqual(image.size.height, 48)
    }

    func testImageWithNonSquareSize() {
        let symbol = MaterialDesignSymbol(icon: .menu48px, size: 24)
        let customSize = CGSize(width: 60, height: 40)
        let image = symbol.image(size: customSize)

        XCTAssertEqual(image.size.width, 60)
        XCTAssertEqual(image.size.height, 40)
    }

    func testAddForegroundColor() {
        let symbol = MaterialDesignSymbol(icon: .favorite48px, size: 24)
        symbol.addAttribute(foregroundColor: .red)
        let image = symbol.image()

        XCTAssertNotNil(image)
        XCTAssertEqual(image.size.width, 24)
    }

    func testAddCustomAttribute() {
        let symbol = MaterialDesignSymbol(icon: .stars48px, size: 24)
        symbol.addAttribute(attributeName: .foregroundColor, value: UIColor.blue)
        symbol.addAttribute(attributeName: .backgroundColor, value: UIColor.white)
        let image = symbol.image()

        XCTAssertNotNil(image)
    }

    func testMultipleSizes() {
        let sizes: [CGFloat] = [12, 18, 24, 36, 48, 72, 96]

        for size in sizes {
            let symbol = MaterialDesignSymbol(icon: .add48px, size: size)
            let image = symbol.image()

            XCTAssertEqual(image.size.width, size, "Width should match for size \(size)")
            XCTAssertEqual(image.size.height, size, "Height should match for size \(size)")
        }
    }

    // MARK: - MaterialDesignFont Tests

    func testFontCreation() {
        let font = MaterialDesignFont.shared.fontOfSize(24)

        XCTAssertNotNil(font)
        XCTAssertEqual(font.pointSize, 24)
    }

    func testStaticFontCreation() {
        let font = MaterialDesignFont.fontOfSize(32)

        XCTAssertNotNil(font)
        XCTAssertEqual(font.pointSize, 32)
    }

    func testFontCreationMultipleSizes() {
        let sizes: [CGFloat] = [10, 14, 18, 24, 36, 48]

        for size in sizes {
            let font = MaterialDesignFont.shared.fontOfSize(size)
            XCTAssertEqual(font.pointSize, size, "Font size should be \(size)")
        }
    }

    // MARK: - MaterialDesignIconEnum Tests

    func testIconEnumRawValue() {
        let icon = MaterialDesignIconEnum.home48px

        XCTAssertFalse(icon.rawValue.isEmpty)
        XCTAssertEqual(icon.rawValue.count, 1) // Should be a single Unicode character
    }

    func testDifferentIconsHaveDifferentRawValues() {
        let icon1 = MaterialDesignIconEnum.home48px
        let icon2 = MaterialDesignIconEnum.settings48px
        let icon3 = MaterialDesignIconEnum.search48px

        XCTAssertNotEqual(icon1.rawValue, icon2.rawValue)
        XCTAssertNotEqual(icon2.rawValue, icon3.rawValue)
        XCTAssertNotEqual(icon1.rawValue, icon3.rawValue)
    }

    func testIconEnumFromRawValue() {
        let original = MaterialDesignIconEnum.favorite48px
        let recreated = MaterialDesignIconEnum(rawValue: original.rawValue)

        XCTAssertEqual(original, recreated)
    }

    // MARK: - FontError Tests

    func testFontErrorDescriptions() {
        let notFoundError = FontError.fontFileNotFound(name: "test-font")
        XCTAssertTrue(notFoundError.description.contains("test-font"))

        let invalidDataError = FontError.invalidFontData
        XCTAssertFalse(invalidDataError.description.isEmpty)

        let creationError = FontError.fontCreationFailed
        XCTAssertFalse(creationError.description.isEmpty)

        let registrationError = FontError.registrationFailed(nil)
        XCTAssertFalse(registrationError.description.isEmpty)
    }

    // MARK: - Integration Tests

    func testCreateMultipleSymbolsWithSameIcon() {
        let icon = MaterialDesignIconEnum.check48px

        let symbol1 = MaterialDesignSymbol(icon: icon, size: 24)
        let symbol2 = MaterialDesignSymbol(icon: icon, size: 48)

        let image1 = symbol1.image()
        let image2 = symbol2.image()

        XCTAssertEqual(image1.size.width, 24)
        XCTAssertEqual(image2.size.width, 48)
    }

    func testSymbolWithDifferentColors() {
        let colors: [UIColor] = [.red, .green, .blue, .black, .white]

        for color in colors {
            let symbol = MaterialDesignSymbol(icon: .close48px, size: 24)
            symbol.addAttribute(foregroundColor: color)
            let image = symbol.image()

            XCTAssertNotNil(image)
        }
    }
}
#endif
