//
//  MyModelProtocol.h
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyModelProtocol <NSObject>


@required
@property (nonatomic, assign) NSInteger collectionNum;
@property (nonatomic, assign) BOOL isCollect;

@optional
@property (nonatomic, copy) NSString * resourceID;
@property (nonatomic, assign) NSInteger resourceType;

@end
