// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MaterialDesignSymbol",
    platforms: [
        .iOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(name: "MaterialDesignSymbol", targets: ["MaterialDesignSymbol"])
    ],
    targets: [
        .target(
            name: "MaterialDesignSymbol",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "MaterialDesignSymbolTests",
            dependencies: ["MaterialDesignSymbol"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
