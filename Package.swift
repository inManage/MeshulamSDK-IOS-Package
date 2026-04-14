// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "MeshulamSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MeshulamSDK",
            targets: ["MeshulamSDKWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.1"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "3.3.0"),
    ],
    targets: [
        .target(
            name: "MeshulamSDKWrapper",
            dependencies: [
                "MeshulamSDKBinary",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "Lottie", package: "lottie-ios"),
            ],
            path: "Sources/MeshulamSDKWrapper"
        ),
        .binaryTarget(
            name: "MeshulamSDKBinary",
            path: "MeshulamSDK.xcframework"
        ),
    ]
)
