//
//  UITabBar+Badge.h
//  Join
//
//  Created by silan on 16/10/4.
//  Copyright © 2016年 Join. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (Badge)

- (void)updateBadge:(NSString *)badge bgColor:(UIColor *)bgColor atIndex:(NSInteger)index;
- (void)updateBadge:(NSString *)badge atIndex:(NSInteger)index;

@end
