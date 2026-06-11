// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FeatureKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "FeatureKit",
            targets: ["FeatureKit"]
        ),
    ],
    dependencies: [
        .package(path: "../Extensions")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FeatureKit",
            dependencies: [
                .product(name: "Extensions", package: "Extensions")
            ]
        ),

    ]
)
