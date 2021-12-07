//
//  QYViewController.m
//  QYUINavigationBarCategory
//
//  Created by insect on 12/07/2021.
//  Copyright (c) 2021 insect. All rights reserved.
//

#import "QYViewController.h"
#import <UINavigationBar+QYCategory.h>

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    self.navigationController.navigationBar.qy_backgroundImage =
    self.navigationController.navigationBar.qy_backgroundColor =
    self.navigationController.navigationBar.qy_titleTextAttributes =
    [self.navigationController.navigationBar qy_setIsTransparent:<#(BOOL)#>];
}


@end
