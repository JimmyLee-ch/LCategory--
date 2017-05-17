//
//  UIBarButtonItem+LExtension.m
//  UIBarButtonItem+LExtension
//
//  Created by Jimmy_Lee on 2016/12/19.
//  Copyright © 2016年 Jimmy_Lee. All rights reserved.
//

#import "UIBarButtonItem+LExtension.h"

@implementation UIBarButtonItem (LExtension)

/**
 创建带有图片的barButtonItem
 
 @param image       默认图片
 @param selectImage 选中图片
 @param target      对象
 @param action      点击事件
 @return            创建实例对象
 */
+ (instancetype)itemWithImage:(NSString *)image
                  selectImage:(NSString *)selectImage
                       target:(id)target
                       action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selectImage] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}



/**
 创建只有文字的barButtonItem，并且可以设置文字颜色
 
 @param title       标题
 @param titleColor  标题颜色
 @param titleFont   标题字体大小
 @param target      对象
 @param action      点击事件
 @return            创建实例对象
 */
+ (instancetype)itemWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                    titleFont:(CGFloat)titleFont
                       target:(id)target
                       action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}


/**
 创建带有图片和文字的barButtonItem
 
 @param image       默认图片
 @param selectImage 选中时的图片
 @param title       标题
 @param titleColor  标题颜色
 @param titleFont   标题字体大小
 @param target      对象
 @param action      点击事件
 @return            创建实例对象
 */
+ (instancetype)itemWithImage:(NSString *)image
                  selectImage:(NSString *)selectImage
                        title:(NSString *)title
                   titleColor:(UIColor *)titleColor
                    titleFont:(CGFloat)titleFont
                       target:(id)target
                       action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectImage] forState:UIControlStateHighlighted];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}


@end
