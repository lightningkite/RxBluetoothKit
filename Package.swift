// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4),
    ],
    products: [
        .library(name: "RxBluetoothKit", targets: ["RxBluetoothKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lightningkite/RxSwift.git", exact: "6.2.4-LK"),
    ],
    targets: [
        .target(
            name: "RxBluetoothKit",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift")
            ],
            path: ".",
            exclude: [
                "Tests",
                "Source/Info.plist",
                "Source/RxBluetoothKit.h",
            ],
            sources: [
                "Source",
            ]
        ),
    ]
)
