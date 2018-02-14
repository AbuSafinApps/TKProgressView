
<p align="center">
	<a href="https://github.com/toseefkhilji/TKProgressView/">
        <img src="https://github.com/toseefkhilji/TKProgressView/blob/master/TKProgressView-logo.png" alt="Logo">
    </a>
</p>

[![Version](https://img.shields.io/cocoapods/v/TKProgressView.svg?style=flat)](http://cocoapods.org/pods/TKProgressView)
[![License](https://img.shields.io/github/license/toseefkhilji/TKProgressView.svg)](https://github.com/toseefkhilji/TKProgressView/blob/master/LICENSE?raw=true)
![Xcode 9.0+](https://img.shields.io/badge/Xcode-9.0%2B-blue.svg)
![Swift 4.0+](https://img.shields.io/badge/Swift-4.0%2B-orange.svg)

TKProgressView is an amazing animated activity indicator and easy-to-use to display the progress of an ongoing task on iOS. 

## Usage

```swift

// Create your ProgressView

 let tkView = TKProgressView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
 self.view.addSubview(tkView)
 
```

To start the progress
```swift
tkView.startAnimating()
```

To stop it 
```swift
tkView.stopAnimating()
```

## Customization

To change animation speed 
```swift

// change speed
tkview.speed = 0.5
 ```

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `TKProgressView` by adding it to your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!
pod 'TKProgressView'
```

#### Manually
1. Download and drop ```TKProgressView.swift``` in your project.  
2. Done! 

## TODO
 - [ ]  More Customization
 - [ ]  Carthage Support
 - [ ]  Swift Package Manager
 - [ ]  Unit Test
 
 
## License
TKProgressView is available under the MIT license. See the LICENSE file for more info.
