//
//  UIBarButtonItem+LExtension.m
//  UIBarButtonItem+LExtension
//
//  Created by Jimmy_Lee on 2016/12/19.
//  Copyright © 2016年 jimmy_lee. All rights reserved.
//

#import "UIBarButtonItem+LExtension.h"

@implementation UIBarButtonItem (LExtension)

/**
 * 创建带图片的barButtonItem
 */
+ (instancetype)itemWithImage:(NSString *)image HeightImage:(NSString *)heightImage Target:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:heightImage] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}

/**
 * 创建只有文字的barButtonItem，并且可以设置文字颜色
 */
+ (instancetype)itemWithTitle:(NSString *)title TitleColor:(UIColor *)titleColor TitleFont:(CGFloat)titleFont Target:(id)target action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}


@end
