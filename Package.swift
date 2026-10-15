// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-html-fontawesome",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(
            name: "HTMLFontAwesome",
            targets: ["HTMLFontAwesome"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-byte.git", branch: "main"),
        .package(url: "https://github.com/swift-compositions/swift-html.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "HTMLFontAwesome",
            dependencies: [
                .product(name: "HTML", package: "swift-html")
            ]
        ),
        .testTarget(
            name: "HTMLFontAwesome Tests",
            dependencies: [
                .product(name: "Byte", package: "swift-byte"),
                .target(name: "HTMLFontAwesome"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
