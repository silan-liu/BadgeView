//
//  BadgeView.h
//  Join
//
//  Created by silan on 16/9/1.
//  Copyright © 2016年 Join. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface BadgeView : UIView

@property (nonatomic, strong) IBInspectable UIColor *bgColor;
@property (nonatomic, strong) IBInspectable NSString *badgeValue;
@property (nonatomic, strong) IBInspectable UIColor *textColor;

@end
