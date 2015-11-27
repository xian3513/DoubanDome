//
//  RollNavbarFollowSrocllView.m
//  DoubanDome
//
//  Created by xian on 15/11/27.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "RollNavbarFollowSrocllView.h"
#import "Masonry.h"
@implementation RollNavbarFollowSrocllView {
    
    UIView *_statusBarView;
    UIView *_navbarView;
    UIView *_underNavbarView;
}

#pragma mark - life cycle
- (instancetype)initWithView:(UIScrollView *)superView {
    
    return [self initWithFrame:CGRectMake(0, 0, superView.width, 20+44)]; //状态栏＋导航栏高度
}

- (instancetype)initWithFrame:(CGRect)frame {
   
    if(self = [super initWithFrame:frame]){
        self.backgroundColor = RGBA(57, 179, 69, 1);
        
        _statusBarView = [[UIView alloc]init];
         [self addSubview:_statusBarView];
        
        [_statusBarView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).with.offset(0);
            make.left.equalTo(self).with.offset(0);
            make.size.mas_equalTo(CGSizeMake(frame.size.width, 20));
        }];

        [self addNavbarWithView];
        [self addUnderNavbarView];
    }
    return self;
}

- (void)addNavbarWithView {

}

- (void)addUnderNavbarView {

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
