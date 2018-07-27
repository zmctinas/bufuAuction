//
//  BFNavigationController.m
//  BuFu
//
//  Created by 郑鹏 on 16/7/29.
//  Copyright © 2016年 Hangzhou Huifeng Technology Co., Ltd. All rights reserved.
//

#import "BFNavigationController.h"
//#import "BFSingleAudienceViewController.h"
//#import "ZPTabBarController.h"


@interface BFNavigationController ()

@end

@implementation BFNavigationController

//-(BOOL)shouldAutorotate{
//
//    if ([UserInfoModel sharedInstance].isManual) {
//        return YES;
//    }
//    return NO;
//}
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations
//{
//    UIViewController* vc = [self topViewController];
//
//    if ([vc isKindOfClass:[ZPTabBarController class]]) {
//        ZPTabBarController *tabController = (ZPTabBarController*)vc;
//
//        NSArray *viewControllers = [tabController getCurrentNavigationController].viewControllers;
//        for (UIViewController *controller in viewControllers) {
//            if ([controller isKindOfClass:[BFSingleAudienceViewController class]]) {
//                UIInterfaceOrientationMask interface = [vc supportedInterfaceOrientations];
//                return interface;
//            }
//        }
//        return UIInterfaceOrientationMaskPortrait;
//    }
//    else if ([vc respondsToSelector:@selector(supportedInterfaceOrientations)]) {
////        UIInterfaceOrientationMask interface = [vc supportedInterfaceOrientations];
////        return interface;
//        return UIInterfaceOrientationMaskPortrait;
//    }
//    return UIInterfaceOrientationMaskPortrait;
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.navigationBar setTitleTextAttributes:@{
                                                    NSFontAttributeName:[UIFont systemFontOfSize:18],
                                                    NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#ffffff"],
                                                    }];//[UIColor colorWithHexString:@"#262626"]
    
    [[ NSNotificationCenter defaultCenter ] addObserver:self selector:@selector(layoutControllerSubViews:)
                                                   name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}

- (void)layoutControllerSubViews:(NSNotification *)notification
{
//    NSValue *statusBarFrameValue = [notification.userInfo valueForKey:UIApplicationStatusBarFrameUserInfoKey];
//    
//    // TODO: react on changes of status bar height (e.g. incoming call, tethering, ...)
//    NSLog(@"Status bar frame changed: %@", NSStringFromCGRect([statusBarFrameValue CGRectValue]));
//    NSLog(@"%f",self.view.frame.size.height);
    
//    if (CGRectGetHeight(self.view.frame) != MYSCREENHEIGHT ) {
//        [UIView animateWithDuration:0.25 animations:^{
//            self.view.frame = CGRectMake(0, 0, MYSCREENWIDTH, MYSCREENHEIGHT);
//        }];
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
