// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "YogaKit",
  platforms: [
    .iOS(.v10)
  ],
  products: [
    .library(name: "Yoga", targets: ["Yoga"]),
    .library(name: "YogaKit", targets: ["YogaKit"])
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "Yoga",
      dependencies: [],
      path: "yoga",
      cxxSettings: [
        .headerSearchPath("yoga")
      ]
    ),
    .target(
      name: "YogaKit",
      dependencies: ["Yoga"],
      path: "YogaKit/Source",
      exclude: ["YGLayoutExtensions.swift"],
      cxxSettings: [
        .headerSearchPath("YogaKit/Source")
      ]
    )
  ],
  cxxLanguageStandard: .cxx14
)