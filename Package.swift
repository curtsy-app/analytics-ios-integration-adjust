// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SegmentAdjust",
    defaultLocalization: "en",
    platforms: [.iOS(.v10)],
    products: [.library(name: "SegmentAdjust", targets: ["SegmentAdjust"])],
    dependencies: [
      .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios.git", from: "4.1.3"),
      .package(name: "Adjust", url: "https://github.com/adjust/ios_sdk.git", from: "4.29.2"),
    ],
    targets: [
        .target(
            name: "SegmentAdjust",
            dependencies: [
                "Segment",
                "Adjust"
            ],
            path: "Pod/Classes",
            publicHeadersPath: ""
        )
    ]
)
