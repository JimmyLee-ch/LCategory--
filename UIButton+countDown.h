//
//  UIButton+countDown.h
//  UIButton+countDown
//
//  Created by Jimmy_Lee on 2017/1/6.
//  Copyright © 2017年 jimmy_lee. All rights reserved.
//  带有倒计时功能的按钮

#import <UIKit/UIKit.h>

@interface UIButton (countDown)
/** 倒计时按钮*/
- (void)startWithTime:(NSInteger)timeLine title:(NSString *)title countDownTitle:(NSString *)subTitle mainColor:(UIColor *)mColor countColor:(UIColor *)color;
@end
