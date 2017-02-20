//
//  UIView+LExtension.m
//  UIView+LExtension
//
//  Created by Jimmy_Lee on 2016/12/19.
//  Copyright © 2016年 jimmy_lee. All rights reserved.
//

#import "UIView+LExtension.h"

@implementation UIView (LExtension)

#pragma mark - setter
- (void)setL_width:(CGFloat)l_width{
    CGRect frame = self.frame;
    frame.size.width = l_width;
    self.frame = frame;
}

- (void)setL_height:(CGFloat)l_height{
    CGRect frame = self.frame;
    frame.size.height = l_height;
    self.frame = frame;
}

- (void)setL_x:(CGFloat)l_x{
    CGRect frame = self.frame;
    frame.origin.x = l_x;
    self.frame = frame;
}

- (void)setL_y:(CGFloat)l_y{
    CGRect frame = self.frame;
    frame.origin.y = l_y;
    self.frame = frame;
}

- (void)setL_centerX:(CGFloat)l_centerX{
    CGPoint center = self.center;
    center.x = l_centerX;
    self.center = center;
}

- (void)setL_centerY:(CGFloat)l_centerY{
    CGPoint center = self.center;
    center.y = l_centerY;
    self.center = center;
}

- (void)setL_size:(CGSize)l_size{
    CGRect frame = self.frame;
    frame.size = l_size;
    self.frame = frame;
}

- (void)setL_origin:(CGPoint)l_origin{
    CGRect frame = self.frame;
    frame.origin = l_origin;
    self.frame = frame;
}

#pragma mark - getter
- (CGFloat)l_width{
    return self.frame.size.width;
}

- (CGFloat)l_height{
    return self.frame.size.height;
}

- (CGFloat)l_x{
    return self.frame.origin.x;
}

- (CGFloat)l_y{
    return self.frame.origin.y;
}

- (CGFloat)l_centerX{
    return self.center.x;
}

- (CGFloat)l_centerY{
    return self.center.y;
}

- (CGSize)l_size{
    return self.frame.size;
}

- (CGPoint)l_origin{
    return self.frame.origin;
}

#pragma mark - 是否播放在主界面
- (BOOL)l_isShowingOnKeyWindow
{
    // 主窗口
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    // 以主窗口左上角为坐标原点, 计算self的矩形框
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    CGRect winBounds = keyWindow.bounds;
    
    // 主窗口的bounds 和 self的矩形框 是否有重叠
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

/** 通过xib创建View*/
+ (instancetype)l_viewFromNib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}
@end
