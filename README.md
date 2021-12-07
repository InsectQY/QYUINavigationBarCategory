# QYUINavigationBarCategory
A handy collection of UINavigationBar categories.

[![CI Status](https://img.shields.io/travis/insect/QYUINavigationBarCategory.svg?style=flat)](https://travis-ci.org/insect/QYUINavigationBarCategory)

[![Version](https://img.shields.io/cocoapods/v/QYUINavigationBarCategory.svg?style=flat)](https://cocoapods.org/pods/QYUINavigationBarCategory)

[![License](https://img.shields.io/cocoapods/l/QYUINavigationBarCategory.svg?style=flat)](https://cocoapods.org/pods/QYUINavigationBarCategory)

[![Platform](https://img.shields.io/cocoapods/p/QYUINavigationBarCategory.svg?style=flat)](https://cocoapods.org/pods/QYUINavigationBarCategory)

## Swift Verison

[QYUINavigationBarExtension](https://github.com/InsectQY/QYUINavigationBarExtension)

## Requirements

- iOS 9.0 or later

## How to use

1. Import

   ```objective-c
   #import <UINavigationBar+QYCategory.h>
   ```

2. Set the properties you need

   ```objective-c
   self.navigationController.navigationBar.qy_backgroundImage =
   self.navigationController.navigationBar.qy_backgroundColor =
   self.navigationController.navigationBar.qy_titleTextAttributes =[self.navigationController.navigationBar qy_setIsTransparent: ];
   ```

## Comment

```objective-c
/* You may specify the font, text color, and shadow properties for the title in the text attributes dictionary, using the keys found in NSAttributedString.h.
 */
@property(nullable,nonatomic,copy) NSDictionary<NSAttributedStringKey, id> *qy_titleTextAttributes;

/// A color to use for the bar background.
@property(nullable, nonatomic,strong) UIColor *qy_backgroundColor;

/// An image to use for the bar background.
@property (nonatomic, readwrite, strong, nullable) UIImage *qy_backgroundImage;

/// Set the UINavigationBar background to transparent.
- (void)qy_setIsTransparent:(BOOL)isTransparent;
```

## Installation

 **CocoaPods**

```ruby
pod 'QYUINavigationBarCategory'
```

## License

QYUINavigationBarCategory is available under the MIT license. See the LICENSE file for more info.



