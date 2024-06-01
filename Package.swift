// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DBDebugToolkit",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DBDebugToolkit",
            targets: ["DBDebugToolkitObjectiveCCore"]
        ),
    ],
    targets: [
        .target(
            name: "DBDebugToolkitSwiftBase",
            path: "DBDebugToolkit",
            exclude: [
                "Classes/Extensions/DBRequestModel+responseDescription.swift",
                "Resources",
            ],
            sources: [
                "Classes/Extensions"
            ]
        ),
        .target(
            name: "DBDebugToolkitObjectiveCBase",
            dependencies: [
                .target(name: "DBDebugToolkitSwiftBase")
            ],
            path: "DBDebugToolkit",
            exclude: [
                "Classes/Extensions",
                "Classes/Swift",
                "Classes/DBDebugToolkit.m",
            ],
            sources: [
                "Classes"
            ],
            publicHeadersPath: "Headers"
        ),
        .target(
            name: "DBDebugToolkitSwiftCore",
            dependencies: [
                .target(name: "DBDebugToolkitObjectiveCBase"),
            ],
            path: "DBDebugToolkit",
            exclude: [
                "Resources",
            ],
            sources: [
                "Classes/Extensions/DBRequestModel+responseDescription.swift",
                "Classes/Swift",
            ]
        ),
        .target(
            name: "DBDebugToolkitObjectiveCCore",
            dependencies: [
                .target(name: "DBDebugToolkitSwiftBase"),
                .target(name: "DBDebugToolkitSwiftCore"),
            ],
            path: "DBDebugToolkit",
            exclude: [
                "Resources",
            ],
            sources: [
                "Classes/DBDebugToolkit.m",
            ]
        )
    ]
)
