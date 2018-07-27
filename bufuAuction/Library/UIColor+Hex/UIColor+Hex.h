//
//  UIColor+Hex.h
//  BuFu
//
//  Created by user on 15/8/4.
//  Copyright (c) 2015年 Huifeng Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)color;

//从十六进制字符串获取颜色，
//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

//颜色转16进制字符串
+ (NSString *)changeUIColorToRGB:(UIColor *)color;

@end
