//
//  MyModel.h
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyModelProtocol.h"

@interface MyModel : NSObject<MyModelProtocol>

@property (nonatomic, assign) BOOL isCollect;

@property (nonatomic, assign) NSInteger collectionNum;

@end
