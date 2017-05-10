// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "MKTKoans",
    targets: [
        Target(
            name: "MKTKoansRunner"
        ),
        Target(
            name: "MKTKoansTests",
            dependencies: [
                "MKTCore",
                "MKTUtils"
            ]
        )
    ],
    dependencies: [
        .Package(url: "https://github.com/onevcat/Rainbow", majorVersion: 2)
    ]
)
