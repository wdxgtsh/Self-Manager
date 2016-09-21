//
//  UIButton+CollectionAction.m
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import "UIButton+CollectionAction.h"
#import <objc/message.h>

@implementation UIButton (CollectionAction)

static char HASREGITSER;

static char MODEL;

- (void)setModel:(id<MyModelProtocol>)model{
    objc_setAssociatedObject(self, @selector(model), model, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.selected = model.isCollect;
    if (!self.hasRegitser) {
        [self addTarget:self action:@selector(selfClicked:) forControlEvents:UIControlEventTouchUpInside];
        self.hasRegitser = YES;
    }
}

- (id)model{
    return (id)objc_getAssociatedObject(self, @selector(model));
}

- (void)selfClicked:(UIButton *)button{
    // 获取windows top  VC  根据 windowTopVC 进行相应的操作
    
    if (!self.model.isCollect) {// 未收藏
        self.model.isCollect = YES;
        self.selected = YES;
        self.model.collectionNum ++;
        
        
        NSLog(@"!~~~~~~~~~~~~~~~~~~~~~~~~收藏成功");
    }else{// 已收藏
        self.model.isCollect = NO;
        self.selected = NO;
        self.model.collectionNum --;
        NSLog(@"!~~~~~~~~~~~~~~~~~~~~~~~~取消收藏");
    }
    
    
    
    /**
     *  这个地方可能会出现bug   但是可以解决~~~
     *
     *
     */
}

#pragma mark |--- property
//- (void)setIsCollectedOrNot:(BOOL)isCollectedOrNot{
//    objc_setAssociatedObject(self, &ISCOLLECTIONORNOT, [NSNumber numberWithBool:isCollectedOrNot], OBJC_ASSOCIATION_ASSIGN);
//}
//
//
//- (BOOL)isCollectedOrNot{
//    return [objc_getAssociatedObject(self, &ISCOLLECTIONORNOT) boolValue];
//}
//
//
//- (void)setCollectionNum:(NSInteger)collectionNum{
//    objc_setAssociatedObject(self, &COLLECTIONNUM, [NSNumber numberWithInteger:collectionNum], OBJC_ASSOCIATION_ASSIGN);
//}
//
//- (NSInteger)collectionNum{
//    return [objc_getAssociatedObject(self, &COLLECTIONNUM) integerValue];
//}
//
//- (void)setResourceID:(NSString *)resourceID{
//    objc_setAssociatedObject(self, &RESOURCEID, resourceID, OBJC_ASSOCIATION_COPY_NONATOMIC);
//}
//
//- (NSString *)resourceID{
//    return objc_getAssociatedObject(self, &RESOURCEID);
//}

- (void)setHasRegitser:(BOOL)hasRegitser{
    objc_setAssociatedObject(self, &HASREGITSER, [NSNumber numberWithBool:hasRegitser], OBJC_ASSOCIATION_ASSIGN);
}
- (BOOL)hasRegitser{
    return objc_getAssociatedObject(self, &HASREGITSER);
}

@end
