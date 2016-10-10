//
//  UITabBar+Badge.m
//  Join
//
//  Created by silan on 16/10/4.
//  Copyright © 2016年 Join. All rights reserved.
//

#import "UITabBar+Badge.h"
#import "BadgeView.h"
#import <objc/runtime.h>

@interface UITabBar ()

@property (nonatomic, strong) NSMutableDictionary *badgeDict;

@end

@implementation UITabBar (Badge)

- (NSMutableDictionary *)badgeDict {
    NSMutableDictionary *dict = objc_getAssociatedObject(self, _cmd);
    if (!dict) {
        dict = [NSMutableDictionary dictionaryWithCapacity:0];
        objc_setAssociatedObject(self, _cmd, dict, OBJC_ASSOCIATION_RETAIN);
    }
    
    return dict;
}

- (BadgeView *)badgeViewAtIndex:(NSInteger)index {
    BadgeView *badgeView =  [self.badgeDict objectForKey:@(index)];
    if (!badgeView && self.items.count > 0) {
        badgeView = [[BadgeView alloc] init];
        
        [badgeView sizeToFit];
        
        float tabItemWidth = self.bounds.size.width / self.items.count;
        
        CGRect frame = badgeView.frame;
        frame.origin = CGPointMake(tabItemWidth * index + tabItemWidth / 2 + 2, 15);
        badgeView.frame = frame;
        
        [self addSubview:badgeView];
        
        [self.badgeDict setObject:badgeView forKey:@(index)];
    }
    
    return badgeView;
}

- (void)updateBadge:(NSString *)badgeValue bgColor:(UIColor *)bgColor atIndex:(NSInteger)index {
    if (index >= 0 && index < self.items.count) {
        BadgeView *badgeView = [self badgeViewAtIndex:index];
        
        if (badgeView) {
            badgeView.bgColor = bgColor;
            badgeView.badgeValue = badgeValue;
        }
    }
}

- (void)updateBadge:(NSString *)badgeValue atIndex:(NSInteger)index {
    if (index >= 0 && index < self.items.count) {
        BadgeView *badgeView = [self badgeViewAtIndex:index];
        
        if (badgeView) {
            badgeView.badgeValue = badgeValue;
        }
    }
}

- (void)updateBadgeTextColor:(UIColor *)textColor atIndex:(NSInteger)index {
    if (index >= 0 && index < self.items.count) {
        BadgeView *badgeView = [self badgeViewAtIndex:index];

        if (badgeView) {
            badgeView.textColor = textColor;
        }
    }
}

- (void)updateBadgeBgColor:(UIColor *)bgColor atIndex:(NSInteger)index {
    if (index >= 0 && index < self.items.count) {
        BadgeView *badgeView = [self badgeViewAtIndex:index];

        if (badgeView) {
            badgeView.bgColor = bgColor;
        }
    }
}

- (void)updateBadgeTextFont:(UIFont *)textFont atIndex:(NSInteger)index {
    if (index >= 0 && index < self.items.count) {
        BadgeView *badgeView = [self badgeViewAtIndex:index];

        if (badgeView) {
            badgeView.textFont = textFont;
        }
    }
}
@end
