# PhraseKit

##A simple category for replacing custom placeholders (strings enclosed in brackets) with values from NSDictionary.

[![CI Status](http://img.shields.io/travis/Fewlaps/PhraseKit.svg?style=flat)](https://travis-ci.org/Fewlaps/PhraseKit)
[![Version](https://img.shields.io/cocoapods/v/PhraseKit.svg?style=flat)](http://cocoapods.org/pods/PhraseKit)
[![License](https://img.shields.io/cocoapods/l/PhraseKit.svg?style=flat)](http://cocoapods.org/pods/PhraseKit)
[![Platform](https://img.shields.io/cocoapods/p/PhraseKit.svg?style=flat)](http://cocoapods.org/pods/PhraseKit)

## Usage

```
NSString* stringWithPlaceholders = @"lest play with placeholders {one} and {two}";
NSString* newString = [stringWithPlaceholders replacePlaceholdersUsingDictionary:@{@"one":@"value 1",@"two":@"value two"}];
```

## Installation

PhraseKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PhraseKit"
```

## Author

Fewlaps, core@fewlaps.com

## License

PhraseKit is available under the MIT license. See the LICENSE file for more info.
