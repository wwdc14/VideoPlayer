// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VideoPlayer",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VideoPlayer",
            targets: ["VideoPlayer"]),
    ],
    targets: [
        .target(
            name: "VideoPlayer",
            path: "Sources/VideoPlayer",
            resources: [.process("JPVideoPlayer.bundle")]),
        .testTarget(
            name: "VideoPlayerTests",
            dependencies: ["VideoPlayer"]),
    ]
)
