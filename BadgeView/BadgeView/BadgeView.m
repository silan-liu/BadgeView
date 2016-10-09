//
//  BadgeView.m
//  Join
//
//  Created by silan on 16/9/1.
//  Copyright © 2016年 Join. All rights reserved.
//

#import "BadgeView.h"

@interface BadgeView ()
{
    UILabel *_label;
}
@end

@implementation BadgeView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit {
    self.clipsToBounds = YES;
    self.bgColor = [UIColor redColor];
    self.userInteractionEnabled = NO;
    
    _label = [[UILabel alloc] init];
    
    _label.textColor = [UIColor whiteColor];
    _label.font = [UIFont systemFontOfSize:12];
    _label.text = self.badgeValue;
    
    [self addSubview:_label];
}

- (void)setBgColor:(UIColor *)bgColor {
    _bgColor = bgColor;
    
    self.backgroundColor = bgColor;
    [self setNeedsLayout];
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    
    _label.textColor = textColor;
    [self setNeedsLayout];
}

- (void)setBadgeValue:(NSString *)badgeValue {
    _badgeValue = badgeValue;
    
    _label.text = badgeValue;
    [self setNeedsLayout];
}

- (void)sizeToFit {
    [super sizeToFit];
    
    CGRect frame = self.frame;
    frame.size = [self size];
    self.frame = frame;
}

- (CGSize)size {
    [_label sizeToFit];
    
    CGSize size = [@"#" sizeWithAttributes:@{NSFontAttributeName: _label.font}];
    
    float width = _label.bounds.size.width + size.width * 1.5;
    float height = _label.bounds.size.height + 2;
    
    if (width < height) {
        width = height;
    }
    
    return CGSizeMake(width, height);
}

- (CGSize)intrinsicContentSize {
    
    return [self size];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [_label sizeToFit];
    
    [self sizeToFit];
    
    _label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);

    self.layer.cornerRadius = self.bounds.size.width < self.bounds.size.height ? self.bounds.size.width / 2 : self.bounds.size.height / 2;
}

@end
