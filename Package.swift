// swift-tools-version: 6.2
import PackageDescription

let dependencies: [Target.Dependency] = [
  .product(name: "Algorithms", package: "swift-algorithms"),
  .product(name: "ArgumentParser", package: "swift-argument-parser"),
  .product(name: "Collections", package: "swift-collections"),
  .product(name: "Parsing", package: "swift-parsing"),
]

let package = Package(
  name: "AdventOfCode",
  platforms: [.macOS(.v15)],
  dependencies: [
    .package(
      url: "https://github.com/apple/swift-algorithms.git", "1.2.1" ..< "1.3.0",
    ),
    .package(
      url: "https://github.com/apple/swift-argument-parser.git", "1.6.2" ..< "1.7.0",
    ),
    .package(
      url: "https://github.com/apple/swift-collections.git", "1.3.0" ..< "1.4.0",
    ),
    .package(
      url: "https://github.com/pointfreeco/swift-parsing", "0.14.1" ..< "0.15.0",
    ),
    .package(path: "NewDayPlugin"),
  ],
  targets: [
    .executableTarget(
      name: "AdventOfCode",
      dependencies: dependencies,
      resources: [.copy("Data")],
    ),
    .testTarget(
      name: "AdventOfCodeTests",
      dependencies: ["AdventOfCode"],
    ),
  ],
)
