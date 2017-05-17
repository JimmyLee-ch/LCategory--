//
//  UIBarButtonItem+LExtension.h
//  UIBarButtonItem+LExtension
//
//  Created by Jimmy_Lee on 2016/12/19.
//  Copyright © 2016年 Jimmy_Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LExtension)

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
                       action:(SEL)action;



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
                       action:(SEL)action;


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
                       action:(SEL)action;
@end
