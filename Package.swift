// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LeapCreatorSDK",
    products: [
        .library(name: "LeapCreatorSDK", targets: ["LeapCreatorSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "LeapCreatorSDK",
            url: "https://github.com/Leap-Platform/leap-creator-ios/releases/download/2.3.0/LeapCreatorSDK.xcframework.zip",
            checksum: "e9c2c63cd07b088b880eaa3208dee99376ccd2df88d7726bff1ec4a559ab3c29"
        )
    ]
)
