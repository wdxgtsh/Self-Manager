//
//  SecondViewController.m
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import "ArticleViewController.h"
#import "MySecondTableViewCell.h"
#import "MyArticleModel.h"

static NSString * CellID = @"CellID";

@interface ArticleViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView * mainTableView;

@property (nonatomic, strong) NSMutableArray * dataSourceArr;

@end

@implementation ArticleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainTableView = ({
        UITableView * tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        tableview.delegate = self;
        tableview.dataSource = self;
        [tableview registerClass:[MySecondTableViewCell class] forCellReuseIdentifier:CellID];
        [self.view addSubview:tableview];
        
        tableview;
    });
    
    self.dataSourceArr = ({
        NSMutableArray * mutableArray = [[NSMutableArray alloc] initWithCapacity:0];
        for (NSInteger i = 0 ; i < 30; i++) {
            @autoreleasepool {
                MyArticleModel * model = [[MyArticleModel alloc] init];
                model.resourceID = [NSString stringWithFormat:@"id%zd", i];
                model.resourceTitle = [NSString stringWithFormat:@"文章-%zd", i];
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
    MySecondTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    //    MyModel * model = (MyModel *)self.dataSourceArr[indexPath.row];
    [cell setModel:(MyArticleModel *)self.dataSourceArr[indexPath.row]];
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

- (void)dealloc{
    NSLog(@"~~~~~~~~~~~~~~~~~~");
}

    

@end
