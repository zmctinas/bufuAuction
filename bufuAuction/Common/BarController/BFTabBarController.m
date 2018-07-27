//
//  BFTabBarController.m
//  bufuAuction
//
//  Created by Andy on 2018/7/18.
//  Copyright © 2018年 JieLi. All rights reserved.
//

#import "BFTabBarController.h"
#import "BFNavigationController.h"

#import "mianViewController.h"
#import "mineViewController.h"
#import "attentionViewController.h"
#import "messageViewController.h"

@interface BFTabBarController ()

@end

@implementation BFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupSubController];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setupSubController
{
    mianViewController *homeVC = [[mianViewController alloc] init];
    [self setupChildViewController:homeVC title:@"首页" imageName:@"tabbar_xuanxiu" selectedImageName:@"tabbar_xuanxiu_h"];
    
    attentionViewController *attentionVC = [[attentionViewController alloc] init];
    [self setupChildViewController:attentionVC title:@"关注" imageName:@"tabbar_xuanxiu" selectedImageName:@"tabbar_xuanxiu_h"];
    
    messageViewController *messageVC = [[messageViewController alloc] init];
    [self setupChildViewController:messageVC title:@"消息" imageName:@"tabbar_xuanxiu" selectedImageName:@"tabbar_xuanxiu_h"];
    
    mineViewController *mineVC = [[mineViewController alloc] init];
    [self setupChildViewController:mineVC title:@"我的" imageName:@"tabbar_xuanxiu" selectedImageName:@"tabbar_xuanxiu_h"];
    
//    self.viewControllers = @[homeVC,attentionVC,messageVC,mineVC];
    
}

/**
 *  初始化一个子控制器
 *
 *  @param childVc           需要初始化的子控制器
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 1.设置控制器的属性
        childVc.title = title;
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    childVc.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
//    UITabBarItem *item = [[UITabBarItem  alloc] initWithTitle:title image:[UIImage imageNamed:imageName] selectedImage:[UIImage imageNamed:selectedImageName]];
    
    // 2.包装一个导航控制器
    BFNavigationController *nav = [[BFNavigationController alloc] initWithRootViewController:childVc];
    
//    nav.navigationBarHidden = YES;
    [self addChildViewController:nav];
    
    
    
//    // 3.添加tabbar内部的按钮
//    [self.tabBar addTabBarButtonWithItem:item];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
