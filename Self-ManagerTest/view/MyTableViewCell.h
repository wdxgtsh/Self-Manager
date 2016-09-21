//
//  MyTableViewCell.h
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModelProtocol.h"

@interface MyTableViewCell : UITableViewCell

@property (nonatomic, strong) id<MyModelProtocol>  model;

@property (nonatomic, strong) NSIndexPath * indexPath;

@end
