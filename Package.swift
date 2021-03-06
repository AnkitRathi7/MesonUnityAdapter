// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MesonUnityAdapter",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MesonUnityAdapter",
            targets: ["MesonUnityAdapter"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "MesonSDK", url: "https://github.com/AnkitRathi7/MesonSDK", from: Version(1, 1, 0)),
        .package(name: "UnityAds", url: "https://github.com/AnkitRathi7/UnityAds", from: Version(1, 0, 0))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "MesonUnityAdapter", url: "https://mesonsdk.s3.us-east-2.amazonaws.com/ios/plugins/MesonUnityAdapter/MesonUnityAdapter.zip", checksum: "cf72419af5a1631f27a286f47294d9f95bccdf0209d842fa4ff2fefb8392a22e")
    ]
)
