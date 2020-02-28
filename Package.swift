// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DCIExampleSwift",
    products: [
        .executable(
            name: "DCIExampleSwift",
            targets: ["DCIExampleSwift"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DCIExampleSwift",
            dependencies: [])
    ]
)
