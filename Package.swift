// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TelegramBot",
    platforms: [
       .macOS(.v13)
    ],
    products: [
        .library(name: "TelegramBot",
                 targets: ["TelegramBot"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.89.0"),
    ],
    targets: [
        .target(
            name: "TelegramBot",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
            ]
        )
    ]
)
