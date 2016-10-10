//
//  UITabBar+Badge.h
//  Join
//
//  Created by silan on 16/10/4.
//  Copyright © 2016年 Join. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (Badge)

// 更新badge和bgColor
- (void)updateBadge:(NSString *)badge bgColor:(UIColor *)bgColor atIndex:(NSInteger)index;

// 更新badge
- (void)updateBadge:(NSString *)badge atIndex:(NSInteger)index;

// 更新文本颜色
- (void)updateBadgeTextColor:(UIColor *)textColor atIndex:(NSInteger)index;

// 更新背景色
- (void)updateBadgeBgColor:(UIColor *)bgColor atIndex:(NSInteger)index;

// 更新文本字体
- (void)updateBadgeTextFont:(UIFont *)textFont atIndex:(NSInteger)index;

@end
