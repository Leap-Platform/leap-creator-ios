// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LeapCreatorSDK",
    products: [
        .library(name: "LeapCreatorSDK", targets: ["LeapCreatorSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "LeapCreatorSDK", 
            path: "LeapCreatorSDK.xcframework",
            dependencies:["Starscream"]
        )
    ]
)