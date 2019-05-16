// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "TylerCalendarView",
    products: [
        .library(
            name: "TylerCalendarView",
            targets: ["TylerCalendarView"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TylerCalendarView",
            dependencies: []
        ),
        .testTarget(
            name: "TylerCalendarViewTests",
            dependencies: ["TylerCalendarView"]
        ),
    ]
)
