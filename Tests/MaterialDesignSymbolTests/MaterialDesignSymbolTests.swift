import XCTest
@testable import MaterialDesignSymbol

#if !os(macOS)
import UIKit

final class MaterialDesignSymbolTests: XCTestCase {

    // MARK: - MaterialDesignFont Tests

    func testFontSharedInstance() {
        let font1 = MaterialDesignFont.shared
        let font2 = MaterialDesignFont.shared
        XCTAssertTrue(font1.fontOfSize(20).fontName == font2.fontOfSize(20).fontName)
    }

    func testFontLoading() {
        let font = MaterialDesignFont.shared.fontOfSize(24)
        XCTAssertNotNil(font, "Font should load successfully")
        XCTAssertEqual(font.fontName, "Material Symbols Outlined")
    }

    func testFontSize() {
        let fontSize: CGFloat = 32
        let font = MaterialDesignFont.shared.fontOfSize(fontSize)
        XCTAssertEqual(font.pointSize, fontSize)
    }

    func testFontDifferentSizes() {
        let sizes: [CGFloat] = [12, 24, 36, 48, 72]
        for size in sizes {
            let font = MaterialDesignFont.shared.fontOfSize(size)
            XCTAssertEqual(font.pointSize, size)
        }
    }

    func testLoadFontMethod() {
        MaterialDesignFont.shared.loadFont()
        let font = MaterialDesignFont.shared.fontOfSize(20)
        XCTAssertNotNil(font)
    }

    // MARK: - FontLoader Tests

    func testFontLoaderWithInvalidFont() {
        XCTAssertThrowsError(try FontLoader.loadFont("non-existent-font")) { error in
            XCTAssertTrue(error is FontError)
            XCTAssertEqual(error as? FontError, .invalidFontFile)
        }
    }

    func testFontErrorCases() {
        let errors: [FontError] = [
            .invalidFontFile,
            .fontPathNotFound,
            .initFontError,
            .registerFailed
        ]
        XCTAssertEqual(errors.count, 4)
    }

    // MARK: - MaterialDesignSymbol Initialization Tests

    func testSymbolInitWithEnum() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        XCTAssertNotNil(symbol)
    }

    func testSymbolInitWithText() {
        let symbol = MaterialDesignSymbol(text: MaterialDesignIconEnum.home48px.rawValue, size: 30)
        XCTAssertNotNil(symbol)
    }

    func testSymbolInitWithDifferentSizes() {
        let sizes: [CGFloat] = [16, 24, 32, 48, 64]
        for size in sizes {
            let symbol = MaterialDesignSymbol(icon: .home48px, size: size)
            let image = symbol.image()
            XCTAssertEqual(image.size.width, size)
            XCTAssertEqual(image.size.height, size)
        }
    }

    // MARK: - Image Generation Tests

    func testImageGeneration() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        let image = symbol.image()
        XCTAssertTrue(image.size.width > 0)
        XCTAssertTrue(image.size.height > 0)
    }

    func testImageGenerationWithSize() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        let size = CGSize(width: 50, height: 50)
        let image = symbol.image(size: size)
        XCTAssertEqual(image.size.width, size.width)
        XCTAssertEqual(image.size.height, size.height)
    }

    func testImageGenerationWithCustomSize() {
        let symbol = MaterialDesignSymbol(icon: .settings48px, size: 24)
        let customSize = CGSize(width: 100, height: 100)
        let image = symbol.image(size: customSize)
        XCTAssertEqual(image.size.width, 100)
        XCTAssertEqual(image.size.height, 100)
    }

    func testImageWithColor() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        symbol.addAttribute(foregroundColor: .red)
        let image = symbol.image()
        XCTAssertTrue(image.size.width > 0)
    }

    func testImageWithMultipleColors() {
        let colors: [UIColor] = [.red, .blue, .green, .black, .white]
        for color in colors {
            let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
            symbol.addAttribute(foregroundColor: color)
            let image = symbol.image()
            XCTAssertTrue(image.size.width > 0)
        }
    }

    // MARK: - Attribute Tests

    func testAddAttributeWithKey() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        symbol.addAttribute(attributeName: .kern, value: 1.0)
        let image = symbol.image()
        XCTAssertTrue(image.size.width > 0)
    }

    func testAddMultipleAttributes() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        symbol.addAttribute(attributeName: .foregroundColor, value: UIColor.red)
        symbol.addAttribute(attributeName: .kern, value: 2.0)
        symbol.addAttribute(attributeName: .baselineOffset, value: 5.0)
        let image = symbol.image()
        XCTAssertTrue(image.size.width > 0)
    }

    func testAddForegroundColorAttribute() {
        let symbol = MaterialDesignSymbol(icon: .menu48px, size: 24)
        symbol.addAttribute(foregroundColor: .blue)
        let image = symbol.image()
        XCTAssertNotNil(image)
    }

    // MARK: - MaterialDesignIconEnum Tests (Legacy)

    func testIconEnumHasRawValue() {
        let icon = MaterialDesignIconEnum.home48px
        XCTAssertFalse(icon.rawValue.isEmpty)
    }

    func testIconEnumRawValueIsUnicode() {
        let icon = MaterialDesignIconEnum.home48px
        XCTAssertEqual(icon.rawValue.count, 1)
    }

    func testMultipleIcons() {
        let icons: [MaterialDesignIconEnum] = [
            .home48px,
            .settings48px,
            .search48px,
            .menu48px,
            .add48px,
            .delete48px
        ]

        for icon in icons {
            let symbol = MaterialDesignSymbol(icon: icon, size: 24)
            let image = symbol.image()
            XCTAssertTrue(image.size.width > 0, "Image for \(icon) should be generated")
        }
    }

    func testIconEnum24pxVariants() {
        let icons: [MaterialDesignIconEnum] = [
            .home24px,
            .settings24px,
            .search24px
        ]

        for icon in icons {
            XCTAssertFalse(icon.rawValue.isEmpty)
        }
    }

    // MARK: - MaterialSymbolEnum Tests (New)

    func testMaterialSymbolEnumCount() {
        // Verify we have 4,102 icons
        XCTAssertEqual(MaterialSymbolEnum.allCases.count, 4102)
    }

    func testMaterialSymbolEnumHasRawValue() {
        let icon = MaterialSymbolEnum.home
        XCTAssertFalse(icon.rawValue.isEmpty)
    }

    func testMaterialSymbolEnumRawValueIsUnicode() {
        let icon = MaterialSymbolEnum.home
        XCTAssertEqual(icon.rawValue.count, 1)
    }

    func testMaterialSymbolEnumMultipleIcons() {
        let icons: [MaterialSymbolEnum] = [
            .home,
            .settings,
            .search,
            .menu,
            .add,
            .delete
        ]

        for icon in icons {
            let symbol = MaterialDesignSymbol(text: icon.rawValue, size: 24)
            let image = symbol.image()
            XCTAssertTrue(image.size.width > 0, "Image for \(icon) should be generated")
        }
    }

    func testMaterialSymbolEnumWithNumberPrefix() {
        // Test icons that start with numbers (prefixed with 'icon')
        let icons: [MaterialSymbolEnum] = [
            .icon10k,
            .icon123,
            .icon1k,
            .icon360
        ]

        for icon in icons {
            XCTAssertFalse(icon.rawValue.isEmpty)
        }
    }

    // MARK: - Edge Cases

    func testVerySmallSize() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 1)
        let image = symbol.image()
        XCTAssertEqual(image.size.width, 1)
    }

    func testVeryLargeSize() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 500)
        let image = symbol.image()
        XCTAssertEqual(image.size.width, 500)
    }

    func testMinimumValidSize() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        let image = symbol.image(size: CGSize(width: 1, height: 1))
        XCTAssertEqual(image.size.width, 1)
        XCTAssertEqual(image.size.height, 1)
    }

    func testNonSquareImageSize() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        let image = symbol.image(size: CGSize(width: 100, height: 50))
        XCTAssertEqual(image.size.width, 100)
        XCTAssertEqual(image.size.height, 50)
    }
}
#endif
