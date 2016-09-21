//
//  ArticleVideoController.h
//  Self-ManagerTest
//
//  Created by zhaolei on 16/9/12.
//  Copyright © 2016年 zhaolei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ResourceCollectionDelegate <NSObject>

- (void)resourceCollectionAction;

@end

@interface ArticleViewController : UIViewController


@property (nonatomic, weak) id<ResourceCollectionDelegate> delegate;

@end
