//
//  UINavigationController+QYCategory.m
//  QYUINavigationBarCategory
//
//  Created by insect on 2021/12/8.
//  Copyright © 2021 insect. All rights reserved.
//

#import "UINavigationController+QYCategory.h"
#import "UINavigationBar+QYCategory.h"

@implementation UINavigationController (QYCategory)

- (void)qy_setNavigationBarTransparent:(BOOL)transparent {
    
    [self setNavigationBarHidden:YES animated:NO];
    [self.navigationBar qy_setTransparent:transparent];
    [self setNavigationBarHidden:NO animated:NO];
}

@end
