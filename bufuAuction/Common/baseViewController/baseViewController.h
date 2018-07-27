//
//  baseViewController.h
//  bufuAuction
//
//  Created by Andy on 2018/7/25.
//  Copyright © 2018年 JieLi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface baseViewController : UIViewController

//设置返回按钮
- (void)setBackButton;
- (void)removeLeftButton;

////左边按钮(文字)
//- (void)setLeftBtnWithTitle:(NSString *)title;
////左边按钮(图片)
//- (void)setLeftBtnWithImageName:(NSString *)imageName;
//右边按钮(文字)
- (void)setRightBtnWithTitle:(NSString *)title;
//右边按钮(图片)
- (void)setRightBtnWithImageName:(NSString *)imageName;
//右边按钮的点击事件
- (void)rightButtonAction;
- (void)secondRightButtonAction;
- (void)removeRightButton;

@end
