//
//  BViewController.m
//  GofTransitionDemo
//
//  Created by LeeGof on 2016/10/13.
//  Copyright © 2016年 GofLee. All rights reserved.
//

#import "BViewController.h"
#import "GofViewCreateFactory.h"
#import "CViewController.h"

@interface BViewController ()

@property (nonatomic, strong) UIButton *btnTitle;

@end

@implementation BViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"B";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.btnTitle];
}

- (void)btnClick:(UIButton *)sender
{
    CViewController *vc = [[CViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (UIButton *)btnTitle
{
    if (nil == _btnTitle)
    {
        _btnTitle = [GofViewCreateFactory createCustomButtonWithFrame:(CGRect){10, 100, SCREEN_WIDTH - 20, 40} name:@"CViewController" delegate:self selector:@selector(btnClick:) tag:0];
        _btnTitle.backgroundColor = kEssentialColor;
    }
    return _btnTitle;
}

@end
