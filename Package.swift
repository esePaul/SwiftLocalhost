// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLocalhost",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftLocalhost",
            targets: ["SwiftLocalhost"])
       
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/thecatalinstan/Criollo", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftLocalhost",
            dependencies: ["Criollo"],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftLocalhostTests",
            dependencies: ["SwiftLocalhost"],
            path: "Tests"
        ),
    ]
)
