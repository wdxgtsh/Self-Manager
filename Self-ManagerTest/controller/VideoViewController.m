//
//  ViewController.m
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import "MyVideoModel.h"
#import "VideoViewController.h"
#import "MyTableViewCell.h"
#import "ArticleViewController.h"


static NSString * CellID = @"CellID";

@interface VideoViewController ()<UITableViewDelegate,UITableViewDataSource,ResourceCollectionDelegate>

@property (nonatomic, strong) UITableView * mainTableView;

@property (nonatomic, strong) NSMutableArray * dataSourceArr;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainTableView = ({
        UITableView * tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        tableview.delegate = self;
        tableview.dataSource = self;
        [tableview registerClass:[MyTableViewCell class] forCellReuseIdentifier:CellID];
        [self.view addSubview:tableview];
        
        tableview;
    });
    
    self.dataSourceArr = ({
        NSMutableArray * mutableArray = [[NSMutableArray alloc] initWithCapacity:0];
        for (NSInteger i = 0 ; i < 30; i++) {
            @autoreleasepool {
                MyVideoModel * model = [[MyVideoModel alloc] init];
                model.resourceID = [NSString stringWithFormat:@"id%zd", i];
                model.resourceTitle = [NSString stringWithFormat:@"视频-%zd", i];
                model.isCollect = (i % 3 == 0);
                model.collectionNum = 40 + i;
                [mutableArray addObject:model];
            }
        }
        mutableArray;
    });

    
}

#pragma mark |---- UITableViewDelegate && UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    [cell setModel:(MyVideoModel *)self.dataSourceArr[indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSourceArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.000001;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.000001;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ArticleViewController * secondVC = [[ArticleViewController alloc] init];
    secondVC.delegate = self;
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)resourceCollectionAction{
    
}

@end
