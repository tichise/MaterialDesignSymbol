// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MaterialDesignSymbol",
    platforms: [.iOS(.v10),
                .watchOS(.v3)],
    products: [
        .library(name: "MaterialDesignSymbol", targets: ["MaterialDesignSymbol"])
    ],
    dependencies: [],
    targets: [
        .target(name: "MaterialDesignSymbol",
                resources: [
                    .process("Resources")])
    ],
    swiftLanguageVersions: [.v5]
)
