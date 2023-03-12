# CompassCardDownloader

[![CI Status](https://github.com/Nef10/CompassCardDownloader/workflows/CI/badge.svg?event=push)](https://github.com/Nef10/CompassCardDownloader/actions?query=workflow%3A%22CI%22) [![Documentation percentage](https://nef10.github.io/CompassCardDownloader/badge.svg)](https://nef10.github.io/CompassCardDownloader/) [![License: MIT](https://img.shields.io/github/license/Nef10/CompassCardDownloader)](https://github.com/Nef10/CompassCardDownloader/blob/main/LICENSE) [![Latest version](https://img.shields.io/github/v/release/Nef10/CompassCardDownloader?label=SemVer&sort=semver)](https://github.com/Nef10/CompassCardDownloader/releases) ![platforms supported: macOS | iOS](https://img.shields.io/badge/platform-macOS%20%7C%20iOS-blue) ![SPM compatible](https://img.shields.io/badge/SPM-compatible-blue)

## What

This is a small library to download the current balance as well as transaction data from a Compass Card via web scraping and CSV export.

## How

1) Create an instance and set the delegate
2) Call `authorizeAndGetBalance` with the email and password, it will return the card number and balance
3) Call `downloadCardTransactions` with a card number as well as the date you want to start loading transactions from
4) Dismiss the view your delegate provided

Please also check out the complete documentation [here](https://nef10.github.io/CompassCardDownloader/).

## Usage

The library supports the Swift Package Manger, so simply add a dependency in your `Package.swift`:

```
.package(url: "https://github.com/Nef10/CompassCardDownloader.git", .exact(from: "X.Y.Z")),
```

*Note: as per semantic versioning all versions changes < 1.0.0 can be breaking, so please use `.exact` for now*

## Limitations

Please note that I developed this library for my own needs. As there is no offical API, everything was reverse engineered and there may be a lot of bugs.

Pull requests to fix bugs are otherwise enhance the library are very welcome.

## Copyright

While my code is licensed under the [MIT License](https://github.com/Nef10/CompassCardDownloader/blob/main/LICENSE), the source repository may include names or other trademarks of CompassCard, TransLink or other entities; potential usage restrictions for these elements still apply and are not touched by the software license. Same applies for the API design. I am in no way affilliated with TransLink other than beeing customer.
