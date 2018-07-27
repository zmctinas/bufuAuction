//
//  detailViewController.m
//  bufuAuction
//
//  Created by Andy on 2018/7/20.
//  Copyright © 2018年 JieLi. All rights reserved.
//

#import "detailViewController.h"

#import "SDCycleScrollView.h"

#import "itemMessageTableViewCell.h"
#import "identificationTableViewCell.h"
#import "auctionRecordTableViewCell.h"
#import "shopTableViewCell.h"
#import "itemOtherTableViewCell.h"
#import "itemDescriptionTableViewCell.h"

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
    
    [self registercell];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private

-(void)registercell
{
    
    UINib *message = [UINib nibWithNibName:@"itemMessageTableViewCell" bundle:nil];
    [_tableView registerNib:message forCellReuseIdentifier:@"messageCell"];
    
    UINib *identification = [UINib nibWithNibName:@"identificationTableViewCell" bundle:nil];
    [_tableView registerNib:identification forCellReuseIdentifier:@"identificationCell"];
    
    UINib *record = [UINib nibWithNibName:@"auctionRecordTableViewCell" bundle:nil];
    [_tableView registerNib:record forCellReuseIdentifier:@"recordCell"];
    
    UINib *description = [UINib nibWithNibName:@"itemDescriptionTableViewCell" bundle:nil];
    [_tableView registerNib:description forCellReuseIdentifier:@"descriptionCell"];
    
    UINib *shop = [UINib nibWithNibName:@"shopTableViewCell" bundle:nil];
    [_tableView registerNib:shop forCellReuseIdentifier:@"shopCell"];
    
    UINib *other = [UINib nibWithNibName:@"itemOtherTableViewCell" bundle:nil];
    [_tableView registerNib:other forCellReuseIdentifier:@"otherCell"];
    
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

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 6;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    switch (section) {
        case 0:
        {
            return 1;
        }
            break;
        case 1:
        {
            return 1;
        }
            break;
        case 2:
        {
            return 3;
        }
            break;
        case 3:
        {
            return 1;
        }
            break;
        case 4:
        {
            return 1;
        }
            break;
        case 5:
        {
            return 1;
        }
            break;
            
        default:
            break;
    }
    
    return 0;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    switch (indexPath.section) {
        case 0:
        {
            itemMessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"messageCell" forIndexPath:indexPath];
            
            return cell;
        }
            break;
        case 1:
        {
            identificationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identificationCell" forIndexPath:indexPath];
            return cell;
        }
            break;
        case 2:
        {
            auctionRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"recordCell" forIndexPath:indexPath];
            return cell;
        }
            break;
        case 3:
        {
            itemDescriptionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"descriptionCell" forIndexPath:indexPath];
            return cell;
        }
            break;
        case 4:
        {
            shopTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"shopCell" forIndexPath:indexPath];
            return cell;
        }
            break;
        case 5:
        {
            itemOtherTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"otherCell" forIndexPath:indexPath];
            return cell;
        }
            break;
        default:
            break;
    }
    
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    switch (indexPath.section) {
        case 0:
        {
            return 168;
        }
            break;
        case 1:
        {
            return 60;
        }
            break;
        case 2:
        {
            return 40;
        }
            break;
        case 3:
        {
            return 183;
        }
            break;
        case 4:
        {
            return 70;
        }
            break;
        case 5:
        {
            return 200;
        }
            break;
            
        default:
            break;
    }
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
        {
            return 40;
        }
            break;
        case 2:
        {
            return 50;
        }
            break;
        case 5:
        {
            return 50;
        }
            break;
            
        default:
            break;
    }
    return 0.01;
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    switch (section) {
        case 0:
        {
            UIView *sectionView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, MYSCREENWIDTH, 40)];
            sectionView.backgroundColor = [UIColor redColor];
            
            return sectionView;
        }
            break;
        case 2:
        {
            UIView *recordView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, MYSCREENWIDTH, 50)];
            recordView.backgroundColor = [UIColor redColor];
            
            return recordView;
        }
            break;
        case 5:
        {
            UIView *recordView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, MYSCREENWIDTH, 50)];
            recordView.backgroundColor = [UIColor redColor];
            
            return recordView;
        }
            break;
        
            
        default:
            break;
    }
    return nil;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
}

@end
