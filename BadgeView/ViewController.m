//
//  ViewController.m
//  BadgeView
//
//  Created by silan on 16/10/9.
//  Copyright © 2016年 summer. All rights reserved.
//

#import "ViewController.h"
#import "BadgeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    BadgeView *badgeView = [[BadgeView alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];

    badgeView.badgeValue = @"111";
    badgeView.textColor = [UIColor blackColor];
    badgeView.textFont = [UIFont systemFontOfSize:14];
    badgeView.bgColor = [UIColor redColor];
    [badgeView sizeToFit];

    [self.view addSubview:badgeView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
