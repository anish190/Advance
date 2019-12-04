// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Advance",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "Advance",
            targets: ["Advance"]),
    ],
    dependencies: [
        .package(url: "git@github.com:timdonnelly/DisplayLink.git", from: "0.2.0")
    ],
    targets: [
        .target(
            name: "Advance",
            dependencies: [
                "DisplayLink"
            ]),
        .testTarget(
            name: "AdvanceTests",
            dependencies: [
                "Advance"
            ]),
    ],
    swiftLanguageVersions: [.v5]
)
