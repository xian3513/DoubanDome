//
//  RollNavbarFollowSrocllView.h
//  DoubanDome
//
//  Created by xian on 15/11/27.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "BasicView.h"
@protocol RollNavbarFollowSrocllViewDataSource;


@interface RollNavbarFollowSrocllView :BasicView

@property(nonatomic,strong) UIColor *statusBarColor;  //Default 
@property(nonatomic,weak) id<RollNavbarFollowSrocllViewDataSource> dataSource;

- (instancetype)initWithView:(UIScrollView *)superView;
@end




@protocol RollNavbarFollowSrocllViewDataSource <NSObject>

@optional
- (UIView *)rollNavbarFollowSrocllViewForCustomNavbar;

- (UIView *)rollNavbarFollowSrocllViewForUnderNavbar;
@end