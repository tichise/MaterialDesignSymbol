// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MaterialDesignSymbol",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .watchOS(.v6),
        .tvOS(.v13),
        .visionOS(.v1)
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
