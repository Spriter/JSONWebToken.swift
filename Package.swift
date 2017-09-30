import PackageDescription

let package = Package(
  name: "JWT",
  dependencies: [
    .Package(url: "https://github.com/IBM-Swift/CommonCrypto", majorVersion: 0),
  ],
  exclude: [
    "Sources/HMACCryptoSwift.swift",
  ]
)
