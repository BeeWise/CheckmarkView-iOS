// swift-tools-version:5.0
//
//  CheckmarkView.swift
//  CheckmarkView
//
//  Created by Bee Wise Development on 01/04/19.
//  Copyright © 2019 BeeWise. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "CheckmarkView",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CheckmarkView",
            targets: ["CheckmarkView"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CheckmarkView",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "CheckmarkViewTests",
            dependencies: ["CheckmarkView"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
