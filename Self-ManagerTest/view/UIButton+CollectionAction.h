//
//  UIButton+CollectionAction.h
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModelProtocol.h"

@interface UIButton (CollectionAction)



///**
// *  是否已经被收藏
// */
//@property (nonatomic, assign) BOOL isCollectedOrNot;
///**
// *  收藏数目
// */
//@property (nonatomic, assign) NSInteger collectionNum;
///**
// *  资源ID
// */
//@property (nonatomic, copy) NSString * resourceID;
//
@property (nonatomic, assign) BOOL hasRegitser;

@property (nonatomic, strong) id<MyModelProtocol> model;

//- (void)collectionWithActionType:(BOOL) collectionOrNot withColllectionNum:(NSInteger)collectionNum andResourceID:(NSString *)resourceID;
//
@end
