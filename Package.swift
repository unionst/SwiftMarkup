// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftMarkup",
    products: [
        .library(
            name: "SwiftMarkup",
            targets: ["SwiftMarkup"]
        ),
    ],
    dependencies: [
        .package(name: "CommonMark",
                 url: "https://github.com/unionst/CommonMark.git",
                 .branchItem("main")),
    ],
    targets: [
        .target(
            name: "SwiftMarkup",
            dependencies: [
                .product(name: "CommonMark", package: "CommonMark")
            ]
        ),
        .testTarget(
            name: "SwiftMarkupTests",
            dependencies: [
                .target(name: "SwiftMarkup")
            ]
        )
    ]
)
