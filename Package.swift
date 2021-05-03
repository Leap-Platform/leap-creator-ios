// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LeapCreatorSDK",
    products: [
        .library( name: "LeapCreatorSDK", targets: ["LeapCreatorSDKTargets"] )
    ],
    dependencies: [
        .package(name: "Starscream", url: "https://github.com/daltoniam/Starscream.git",.upToNextMajor(from: "4.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "LeapCreatorSDK", path: "LeapCreatorSDK.xcframework"
        ),
        .target(name: "LeapCreatorSDKTargets",
                dependencies: [
                    .target(name: "LeapCreatorSDK"),
                    .product(name: "Starscream", package: "Starscream")
                ],
                path: "Sources")
    ]
)
