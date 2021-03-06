# CheckmarkView - iOS

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/BeeWise/CheckmarkView-iOS/blob/master/LICENSE)
[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Pixel perfect checkmark view for iOS, for any size you want

- [Screenshots](#screenshots)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Screenshots

<img src="https://user-images.githubusercontent.com/6670019/69714216-ae514f00-110e-11ea-8d3c-2ea3ded2ac48.png" width="50%"></img> 

## Requirements

- iOS 11.0+
- Xcode 10.0+

## Installation

### Dependency Managers
<details>
  <summary><strong>CocoaPods</strong></summary>

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate **CheckmarkView** into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

pod 'CheckmarkView-iOS', '~> 0.0.3'
```

Then, run the following command:

```bash
$ pod install
```

</details>

<details>
  <summary><strong>Carthage</strong></summary>

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate **CheckmarkView** into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "BeeWise/CheckmarkView-iOS" ~> 0.0.3
```

</details>

<details>
  <summary><strong>Swift Package Manager</strong></summary>

To use **CheckmarkView** as a [Swift Package Manager](https://swift.org/package-manager/) package just add the following in your Package.swift file.

``` swift
// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "HelloCheckmarkView",
    dependencies: [
        .package(url: "https://github.com/BeeWise/CheckmarkView-iOS.git", .upToNextMajor(from: "0.0.3"))
    ],
    targets: [
        .target(name: "HelloCheckmarkView", dependencies: ["CheckmarkView"])
    ]
)
```
</details>

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate **CheckmarkView** into your project manually.

<details>
  <summary><strong>Git Submodules</strong></summary><p>

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

```bash
$ git init
```

- Add **CheckmarkView** as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

```bash
$ git submodule add https://github.com/BeeWise/CheckmarkView-iOS.git
$ git submodule update --init --recursive
```

- Open the new `CheckmarkView` folder, and drag the `CheckmarkView.xcodeproj` into the Project Navigator of your application's Xcode project.

    > It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the `CheckmarkView.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different `CheckmarkView.xcodeproj` folders each with two different versions of the `CheckmarkView.framework` nested inside a `Products` folder.

    > It does not matter which `Products` folder you choose from.

- Select the `CheckmarkView.framework`.

- And that's it!

> The `CheckmarkView.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.

</p></details>

<details>
  <summary><strong>Embedded Binaries</strong></summary><p>

- Download the latest release from https://github.com/BeeWise/CheckmarkView-iOS/releases
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- Add the downloaded `CheckmarkView.framework`.
- And that's it!

</p></details>

## Usage

Creating a CheckmarkView is easy. You can do it either programmatically in code or in XIB. There are three types of checkmarks that you can create: `variant1`, `variant2` and `variant3`. The difference between the variants is related to the drawing points of the checkmark. See the screenshot for all the types of checkmarks. Checking or unchecking is done by controlling the `isChecked` property.

```
let checkmarkView = CheckmarkView()
checkmarkView.checkmarkColor = UIColor.white // default is clear
checkmarkView.checkmarkWidth = 5 // default is 3
checkmarkView.checkmarkCapStyle = .round // default is .butt
checkmarkView.checkmarkJoinStyle = .round // default is .miter
checkmarkView.checkmarkType = CheckmarkView.checkmarkType.variant1.rawValue // default is 0 (variant1)
checkmarkView.checkedFillColor = UIColor.blue // default is clear
checkmarkView.uncheckedFillColor = UIColor.white // default is clear
checkmarkView.borderWidth = 5 // default is 3
checkmarkView.checkedBorderColor = UIColor.white // default is clear
checkmarkView.uncheckedBorderColor = UIColor.white // default is clear
checkmarkView.isChecked = true // default is false
```

## Contributing

Issues and pull requests are welcome!

## Author

[Bee Wise Development](https://beewisedevelopment.com)

## License

**CheckmarkView** is released under the MIT license. See [LICENSE](https://github.com/BeeWise/CheckmarkView-iOS/blob/master/LICENSE) for details.
