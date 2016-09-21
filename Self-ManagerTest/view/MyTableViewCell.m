//
//  MyTableViewCell.m
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import "MyTableViewCell.h"
#import "UIButton+CollectionAction.h"

#import "Masonry.h"

@interface MyTableViewCell()

@property (nonatomic, strong) UIButton * collectionButton;

@property (nonatomic, strong) UILabel * titleLabel;

@end

@implementation MyTableViewCell

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
    _collectionButton = ({
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"未收藏" forState:UIControlStateNormal];
        [button setTitle:@"已收藏" forState:UIControlStateSelected];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button.layer.borderColor = [UIColor purpleColor].CGColor;
        button.layer.borderWidth = 1;
        button.layer.masksToBounds = YES;
        [self.contentView addSubview:button];
        
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(-20);
            make.bottom.mas_equalTo(-10);
            make.width.mas_equalTo(@100);
        }];
        button;
    });
    
    _titleLabel = ({
        UILabel * label = [[UILabel alloc] init];
        label.backgroundColor = [UIColor purpleColor];
        [self.contentView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(20);
            make.top.mas_equalTo(20);
        }];
        label;
    });
}

- (void)setModel:(id<MyModelProtocol>)model{
    _model = model;
    [self.collectionButton setModel:_model];
    self.titleLabel.text = _model.resourceTitle;
}


@end
