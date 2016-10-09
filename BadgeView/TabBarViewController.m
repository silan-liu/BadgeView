//
//  TabBarViewController.m
//  BadgeView
//
//  Created by silan on 16/10/9.
//  Copyright © 2016年 summer. All rights reserved.
//

#import "TabBarViewController.h"
#import "UITabBar+Badge.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.tabBar updateBadge:@"120" bgColor:[UIColor purpleColor] atIndex:0];

    [self.tabBar updateBadge:@"222" bgColor:[UIColor blueColor] atIndex:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
