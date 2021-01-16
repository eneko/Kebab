// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Kebab",
    products: [
        .library(name: "Kebab", targets: ["Kebab"]),
        .library(name: "KebabExtensions", targets: ["KebabExtensions"])
    ],
    dependencies: [],
    targets: [
        .target(name: "Kebab", dependencies: []),
        .target(name: "KebabExtensions", dependencies: ["Kebab"]),
        .testTarget(name: "KebabTests", dependencies: ["Kebab"]),
        .testTarget(name: "KebabExtensionsTests", dependencies: ["KebabExtensions"])
    ]
)
