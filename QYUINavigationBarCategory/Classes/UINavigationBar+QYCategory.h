//
//  UINavigationBar+QYCategory.h
//  QYUINavigationBarCategory_Example
//
//  Created by insect on 2021/12/7.
//  Copyright © 2021 insect. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (QYCategory)

/* You may specify the font, text color, and shadow properties for the title in the text attributes dictionary, using the keys found in NSAttributedString.h.
 */
@property(nullable,nonatomic,copy) NSDictionary<NSAttributedStringKey, id> *qy_titleTextAttributes;

/// A color to use for the bar background.
@property(nullable, nonatomic,strong) UIColor *qy_backgroundColor;

/// An image to use for the bar background.
@property (nonatomic, readwrite, strong, nullable) UIImage *qy_backgroundImage;

/// Set the UINavigationBar background to transparent.
- (void)qy_setTransparent:(BOOL)transparent;

@end
