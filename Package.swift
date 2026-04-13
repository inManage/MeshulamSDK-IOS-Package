// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "MeshulamSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MeshulamSDK",
            targets: ["MeshulamSDKTargets"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.1")),
        .package(url: "https://github.com/airbnb/lottie-spm.git", .upToNextMajor(from: "4.3.3")),
    ],
    targets: [
        .target(
            name: "MeshulamSDKTargets",
            dependencies: [
                .target(name: "MeshulamSDK"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "Lottie", package: "lottie-spm"),
            ],
            path: "Sources/MeshulamSDKTargets"
        ),
        .binaryTarget(
            name: "MeshulamSDK",
            path: "MeshulamSDK/MeshulamSDK.xcframework"
        ),
    ]
)
