//
//  MySecondTableViewCell.m
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import "MySecondTableViewCell.h"
#import "UIButton+CollectionAction.h"


@interface MySecondTableViewCell()

@property (nonatomic, strong) UIButton * collectionButton;

@end

@implementation MySecondTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
        UIView * view = [[UIView alloc] init];
        view.backgroundColor = [UIColor whiteColor];
        self.selectedBackgroundView =view;
    }
    return self;
}

- (void)setupUI{
    self.collectionButton = ({
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"未收藏" forState:UIControlStateNormal];
        [button setTitle:@"已收藏" forState:UIControlStateSelected];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button.layer.borderColor = [UIColor redColor].CGColor;
        button.layer.borderWidth = 1;
        button.layer.masksToBounds = YES;
        button.frame = CGRectMake(30, 50, 200, 50);
        [self.contentView addSubview:button];
        button;
    });
}

- (void)setModel:(id<MyModelProtocol>)model{
    _model = model;
    [self.collectionButton setModel:_model];
}

@end
