//
//  baseViewController.m
//  bufuAuction
//
//  Created by Andy on 2018/7/25.
//  Copyright © 2018年 JieLi. All rights reserved.
//

#import "baseViewController.h"

@interface baseViewController ()
{
    UIButton *norbackButton;
    UIButton *leftButton;
}

@end

@implementation baseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBackButton
{
    norbackButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [norbackButton setImage:[UIImage imageNamed:@"navi_back_black"] forState:UIControlStateNormal];
    [norbackButton setTitle:@"返" forState:UIControlStateNormal];
//    norbackButton.backgroundColor = [UIColor redColor];
    
    [norbackButton addTarget:self action:@selector(leftButtonAction) forControlEvents:UIControlEventTouchUpInside];
    norbackButton.frame = CGRectMake(0, 0, 64, 44);
    norbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [norbackButton setImageEdgeInsets:UIEdgeInsetsMake(0, 13, 0, 0)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:norbackButton];
    
}

////左边按钮(图片)
//- (void)setLeftBtnWithImageName:(NSString *)imageName
//{
//    if (leftButton == nil) {
//        leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    }
//    [leftButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//    //    leftButton.backgroundColor = [UIColor redColor];
//    [leftButton addTarget:self action:@selector(leftButtonAction) forControlEvents:UIControlEventTouchUpInside];
//    //    leftButton.frame = CGRectMake(10, 20, 44, 44);
//    leftButton.frame = CGRectMake(0, 0, 64, 44);
//    leftButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//    [leftButton setImageEdgeInsets:UIEdgeInsetsMake(0, 13, 0, 0)];
//    leftButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
//}

-(void)leftButtonAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
