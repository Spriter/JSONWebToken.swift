import PackageDescription

let package = Package(
  name: "JWT",
  dependencies: [
    .Package(url: "git@github.com:IBM-Swift/CommonCrypto.git", majorVersion: 1),
  ],
  exclude: [
    "Sources/HMACCryptoSwift.swift",
  ]
)
