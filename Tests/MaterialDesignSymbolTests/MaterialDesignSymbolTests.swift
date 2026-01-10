import XCTest
@testable import MaterialDesignSymbol

final class MaterialDesignSymbolTests: XCTestCase {

    // MARK: - Font Tests

    func testFontLoading() {
        let font = MaterialDesignFont.shared.fontOfSize(24)
        XCTAssertNotNil(font, "Font should load successfully")
    }

    func testFontSize() {
        let fontSize: CGFloat = 32
        let font = MaterialDesignFont.shared.fontOfSize(fontSize)
        XCTAssertNotNil(font)
        XCTAssertEqual(font?.pointSize, fontSize)
    }

    func testStaticFontMethod() {
        let font = MaterialDesignFont.fontOfSize(20)
        XCTAssertNotNil(font)
    }

    // MARK: - Symbol Initialization Tests

    func testSymbolInitWithEnum() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        XCTAssertNotNil(symbol)
    }

    func testSymbolInitWithText() {
        let symbol = MaterialDesignSymbol(text: MaterialDesignIconEnum.home48px.rawValue, size: 30)
        XCTAssertNotNil(symbol)
    }

    // MARK: - Image Generation Tests

    func testImageGeneration() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        let image = symbol.image()

        XCTAssertNotNil(image, "Image should be generated")
    }

    func testImageGenerationWithSize() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        let size = CGSize(width: 50, height: 50)
        let image = symbol.image(size: size)

        XCTAssertNotNil(image)
        #if canImport(UIKit)
        XCTAssertEqual(image?.size.width, size.width)
        XCTAssertEqual(image?.size.height, size.height)
        #endif
    }

    func testImageWithColor() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        #if canImport(UIKit)
        symbol.addAttribute(foregroundColor: .red)
        #elseif canImport(AppKit)
        symbol.addAttribute(foregroundColor: .red)
        #endif
        let image = symbol.image()

        XCTAssertNotNil(image)
    }

    // MARK: - Static Image Generation Tests

    func testStaticImageGeneration() {
        let size = CGSize(width: 40, height: 40)
        let image = MaterialDesignSymbol.image(icon: .home48px, size: size)

        XCTAssertNotNil(image)
    }

    func testStaticImageGenerationWithColor() {
        let size = CGSize(width: 40, height: 40)
        #if canImport(UIKit)
        let color = UIColor.blue
        #elseif canImport(AppKit)
        let color = NSColor.blue
        #endif
        let image = MaterialDesignSymbol.image(icon: .home48px, size: size, color: color)

        XCTAssertNotNil(image)
    }

    // MARK: - Icon Enum Tests

    func testIconEnumHasRawValue() {
        let icon = MaterialDesignIconEnum.home48px
        XCTAssertFalse(icon.rawValue.isEmpty)
    }

    func testMultipleIcons() {
        let icons: [MaterialDesignIconEnum] = [
            .home48px,
            .settings48px,
            .search48px,
            .menu48px
        ]

        for icon in icons {
            let symbol = MaterialDesignSymbol(icon: icon, size: 24)
            let image = symbol.image()
            XCTAssertNotNil(image, "Image for \(icon) should be generated")
        }
    }

    // MARK: - Attribute Tests

    func testAddAttribute() {
        let symbol = MaterialDesignSymbol(icon: .home48px, size: 30)
        symbol.addAttribute(attributeName: .kern, value: 1.0)

        let image = symbol.image()
        XCTAssertNotNil(image)
    }

    // MARK: - Thread Safety Tests

    func testConcurrentFontAccess() {
        let expectation = XCTestExpectation(description: "Concurrent font access")
        expectation.expectedFulfillmentCount = 10

        let queue = DispatchQueue(label: "test.concurrent", attributes: .concurrent)

        for _ in 0..<10 {
            queue.async {
                let font = MaterialDesignFont.shared.fontOfSize(24)
                XCTAssertNotNil(font)
                expectation.fulfill()
            }
        }

        wait(for: [expectation], timeout: 5.0)
    }

    func testConcurrentImageGeneration() {
        let expectation = XCTestExpectation(description: "Concurrent image generation")
        expectation.expectedFulfillmentCount = 10

        let queue = DispatchQueue(label: "test.concurrent", attributes: .concurrent)

        for i in 0..<10 {
            queue.async {
                let symbol = MaterialDesignSymbol(icon: .home48px, size: CGFloat(20 + i))
                let image = symbol.image()
                XCTAssertNotNil(image)
                expectation.fulfill()
            }
        }

        wait(for: [expectation], timeout: 5.0)
    }
}
