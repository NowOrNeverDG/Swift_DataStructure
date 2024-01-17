// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift_DataStructure",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Swift_DataStructure",
            targets: ["Swift_DataStructure"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Swift_DataStructure"),
        .testTarget(
            name: "Swift_DataStructureTests",
            dependencies: ["Swift_DataStructure"]),
    ]
)
