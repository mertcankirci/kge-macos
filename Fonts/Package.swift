// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "Fonts",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "Fonts",
            targets: ["Fonts"]
        ),
    ],
    targets: [
        .target(
            name: "Fonts",
            resources: [.process("ttf")]
        ),
    ]
)
