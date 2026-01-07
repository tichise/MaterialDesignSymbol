// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaterialDesignSymbol",
    platforms: [
        .iOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "MaterialDesignSymbol",
            targets: ["MaterialDesignSymbol"]
        )
    ],
    targets: [
        .target(
            name: "MaterialDesignSymbol",
            resources: [
                .process("Resources")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "MaterialDesignSymbolTests",
            dependencies: ["MaterialDesignSymbol"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
