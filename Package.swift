// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CompassCardDownloader",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(
            name: "CompassCardDownloader",
            targets: ["CompassCardDownloader"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Nef10/SwiftScraper.git",
            .exact("0.6.0")
        )
    ],
    targets: [
        .target(
            name: "CompassCardDownloader",
            dependencies: [
                "SwiftScraper",
            ],
            resources: [
                .process("Resources/CompassCardDownload.js")
            ]),
        .testTarget(
            name: "CompassCardDownloaderTests",
            dependencies: ["CompassCardDownloader"]),
    ]
)
