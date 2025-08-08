// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "Thread",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "Thread", targets: ["Thread"])
    ],
    targets: [
        .target(name: "Thread")
    ]
)
