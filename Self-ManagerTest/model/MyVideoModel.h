//
//  MyVideoModel.h
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/19.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyModelProtocol.h"

@interface MyVideoModel : NSObject<MyModelProtocol>

// 视频文章共有的  属性
@property (nonatomic, copy) NSString * resourceID;
// 资源类型
@property (nonatomic, copy) NSString * resourceType;
// 资源title
@property (nonatomic, copy) NSString * resourceTitle;
// 资源描述
@property (nonatomic, copy) NSString * resourceContent;
// 是否收藏
@property (nonatomic, assign) BOOL isCollect;
// 收藏数量
@property (nonatomic, assign) NSInteger collectionNum;
// 视频独有的
@property (nonatomic, copy) NSString * videoUnique;

@end
