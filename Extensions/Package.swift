// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Extensions",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "Extensions",
            targets: ["Extensions"]
        ),
    ],
    dependencies: [
        .package(path: "../Fonts")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Extensions",
            dependencies: [
                .product(name: "Fonts", package: "Fonts")
            ]
        ),

    ]
)
