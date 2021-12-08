//
//  UINavigationBar+QYCategory.m
//  QYUINavigationBarCategory_Example
//
//  Created by insect on 2021/12/7.
//  Copyright © 2021 insect. All rights reserved.
//

#import "UINavigationBar+QYCategory.h"

@implementation UINavigationBar (QYCategory)

- (NSDictionary<NSAttributedStringKey,id> *)qy_titleTextAttributes {
    if (@available(iOS 13.0, *)) {
        return self.qy_standardAppearance.titleTextAttributes;
    } else {
        return self.titleTextAttributes;
    }
}

- (void)setQy_titleTextAttributes:(NSDictionary<NSAttributedStringKey,id> *)qy_titleTextAttributes {
    
    if (@available(iOS 13.0, *)) {
        self.qy_standardAppearance.titleTextAttributes = qy_titleTextAttributes;
        [self setUpAppearance];
    } else {
        self.titleTextAttributes = qy_titleTextAttributes;
    }
}

- (UIColor *)qy_backgroundColor {
    if (@available(iOS 13.0, *)) {
        return self.qy_standardAppearance.backgroundColor;
    } else {
        return self.backgroundColor;
    }
}

- (void)setQy_backgroundColor:(UIColor *)qy_backgroundColor {
    if (@available(iOS 13.0, *)) {
        self.qy_standardAppearance.backgroundColor = qy_backgroundColor;
        [self setUpAppearance];
    } else {
        self.backgroundColor = qy_backgroundColor;
    }
}

- (void)setQy_backgroundImage:(UIImage *)qy_backgroundImage {
    if (@available(iOS 13.0, *)) {
        self.qy_standardAppearance.backgroundImage = qy_backgroundImage;
        [self setUpAppearance];
    } else {
        [self setBackgroundImage:qy_backgroundImage forBarMetrics:UIBarMetricsDefault];
    }
}

- (UIImage *)qy_backgroundImage {
    if (@available(iOS 13.0, *)) {
        return self.qy_standardAppearance.backgroundImage;
    } else {
        return [self backgroundImageForBarMetrics:UIBarMetricsDefault];
    }
}

- (void)qy_setTransparent:(BOOL)transparent {
    if (@available(iOS 13.0, *)) {
        if (transparent) {
            [self.qy_standardAppearance configureWithTransparentBackground];
        } else {
            [self.qy_standardAppearance configureWithDefaultBackground];
        }
    } else {
        UIImage *image = transparent ? [[UIImage alloc]init] : nil ;
        [self setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
        self.shadowImage = image;
    }
}

- (void)setUpAppearance {
    
    if (@available(iOS 13.0, *)) {
        self.standardAppearance = self.qy_standardAppearance;
        self.scrollEdgeAppearance = self.qy_standardAppearance;
    }
}

- (UINavigationBarAppearance *)qy_standardAppearance API_AVAILABLE(ios(13.0)) {
    BOOL isInit = [self.standardAppearance isKindOfClass:UINavigationBarAppearance.class];
    if (isInit) {
        return self.standardAppearance;
    } else {
        return [[UINavigationBarAppearance alloc]init];
    }
}

@end
