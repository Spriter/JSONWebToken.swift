import PackageDescription

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
let package = Package(
  name: "JWT",
  dependencies: [
    .Package(url: "https://github.com/IBM-Swift/CommonCrypto.git", majorVersion: 1, minor: 0),
  ],
  exclude: [
    "Sources/HMACCryptoSwift.swift",
  ]
)
#else
let package = Package(
  name: "JWT",
  dependencies: [
    .Package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", majorVersion: 1, minor: 0),
  ],
  exclude: [
    "Sources/HMACCommonCrypto.swift",
  ]
)
#endif
