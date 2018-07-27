//
//  mianViewController.m
//  bufuAuction
//
//  Created by Andy on 2018/7/18.
//  Copyright © 2018年 JieLi. All rights reserved.
//

#import "mianViewController.h"

#import "SDCycleScrollView.h"
#import "itemTableViewCell.h"
#import "detailViewController.h"

@interface mianViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(strong, nonatomic)UITableView *tableView;
@property(strong ,nonatomic)NSMutableArray *tableSource;

@property(strong,nonatomic)SDCycleScrollView *cycleView;

@end

@implementation mianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"拍宝";
    
    self.view.backgroundColor = [UIColor redColor];
    
    _tableSource = [NSMutableArray array];
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    _tableVie
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    
    [self.view addSubview:_tableView];
    
    _tableView.tableHeaderView = self.cycleView;
    _tableView.sectionHeaderHeight = 120;
    _tableView.tableFooterView = [[UIView alloc]init];
    
    [self registercell];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private

-(void)registercell
{
    UINib *nib = [UINib nibWithNibName:@"itemTableViewCell" bundle:nil];
    [_tableView registerNib:nib forCellReuseIdentifier:@"itemCell"];
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    itemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    detailViewController *detial = [[detailViewController alloc]init];
    detial.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detial animated:YES];
}


@end
