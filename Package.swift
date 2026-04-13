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
            targets: ["MeshulamSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MeshulamSDK",
            path: "MeshulamSDK/MeshulamSDK.xcframework"
        ),
    ]
)
