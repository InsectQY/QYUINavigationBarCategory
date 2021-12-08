//
//  QYViewController.m
//  QYUINavigationBarCategory
//
//  Created by insect on 12/07/2021.
//  Copyright (c) 2021 insect. All rights reserved.
//

#import "QYViewController.h"
#import <QYUINavigationBarCategory.h>

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    self.navigationController.navigationBar.qy_backgroundImage = [UIImage imageNamed:@""];
    self.navigationController.navigationBar.qy_backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.qy_titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor blackColor],
                                                                       NSFontAttributeName: [UIFont boldSystemFontOfSize:20]};
    [self.navigationController qy_setNavigationBarTransparent:NO];
}

@end
