//
//  GofViewController.m
//  GofTransitionDemo
//
//  Created by LeeGof on 2016/10/13.
//  Copyright © 2016年 GofLee. All rights reserved.
//

#import "GofViewController.h"
#import "MLTransition.h"

@interface GofViewController ()

@end

@implementation GofViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    BOOL enablePanBack = YES;
    NSString *viewControllerName = NSStringFromClass([self.navigationController.topViewController class]);
    if ([viewControllerName isEqualToString:@"CViewController"])
    {
        enablePanBack = NO;
    }
    [self.navigationController enabledMLTransition:enablePanBack];
    
}

@end
