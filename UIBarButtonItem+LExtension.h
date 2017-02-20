//
//  UIBarButtonItem+LExtension.h
//  UIBarButtonItem+LExtension
//
//  Created by Jimmy_Lee on 2016/12/19.
//  Copyright © 2016年 jimmy_lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LExtension)
/**
 * 创建带图片的barButtonItem
 */
+ (instancetype)itemWithImage:(NSString *)image HeightImage:(NSString *)heightImage Target:(id)target action:(SEL)action;

/**
 * 创建只有文字的barButtonItem，并且可以设置文字颜色
 */
+ (instancetype)itemWithTitle:(NSString *)title TitleColor:(UIColor *)titleColor TitleFont:(CGFloat)titleFont Target:(id)target action:(SEL)action;
@end
