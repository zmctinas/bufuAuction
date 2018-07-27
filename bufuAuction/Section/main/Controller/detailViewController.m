//
//  detailViewController.m
//  bufuAuction
//
//  Created by Andy on 2018/7/20.
//  Copyright © 2018年 JieLi. All rights reserved.
//

#import "detailViewController.h"

#import "SDCycleScrollView.h"

@interface detailViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic)SDCycleScrollView *cycleView;

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation detailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setBackButton];
    
    _tableView.tableHeaderView = self.cycleView;
    _tableView.sectionHeaderHeight = 120;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getter

-(SDCycleScrollView *)cycleView
{
    if (_cycleView == nil) {
        _cycleView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, MYSCREENWIDTH, 200) imageNamesGroup:@[@"1.gif",@"2.gif",@"3.jpg"]];
        _cycleView.pageControlDotSize = CGSizeMake(10, 10);
        _cycleView.currentPageDotColor = [UIColor blackColor];
        _cycleView.pageDotColor = [UIColor colorWithHexString:@"#b0b1c1" alpha:0.35];
        
    }
    return _cycleView;
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *sectionView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, MYSCREENWIDTH, 30)];
    sectionView.backgroundColor = [UIColor redColor];
    
    return sectionView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}

@end
