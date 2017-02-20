//
//  UIView+LExtension.h
//  UIView+LExtension
//
//  Created by Jimmy_Lee on 2016/12/19.
//  Copyright © 2016年 jimmy_lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LExtension)

/** 在分类中，设置@property属性，只会生成getter、setter方法的声明，不会实现；所以需要手动去完成*/

/** 宽*/
@property(nonatomic,assign)CGFloat l_width;
/** 高*/
@property(nonatomic,assign)CGFloat l_height;
/** x*/
@property(nonatomic,assign)CGFloat l_x;
/** y*/
@property(nonatomic,assign)CGFloat l_y;
/** x轴中心点*/
@property(nonatomic,assign)CGFloat l_centerX;
/** y轴中心点*/
@property(nonatomic,assign)CGFloat l_centerY;
/** 设置尺寸*/
@property(nonatomic,assign)CGSize l_size;
/** 设置中心点*/
@property(nonatomic,assign)CGPoint l_origin;

/** 判断一个控件是否真正显示在主窗口 */
@property (nonatomic, assign, readonly) BOOL l_isShowingOnKeyWindow;

/** 通过Nib创建View*/
+ (instancetype)l_viewFromNib;
@end
