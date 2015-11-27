//
//  HomePageViewController.m
//  DoubanDome
//
//  Created by xian on 15/11/27.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "HomePageViewController.h"
#import "RollNavbarFollowSrocllView.h"

#import "Masonry.h"
@interface HomePageViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation HomePageViewController


#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tabView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT-64) style:UITableViewStylePlain];
    tabView.delegate = self;
    tabView.dataSource = self;
    [self.view addSubview:tabView];
    RollNavbarFollowSrocllView *rollView = [[RollNavbarFollowSrocllView alloc]initWithView:tabView];
    [self.view addSubview:rollView];
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    cell.textLabel.text = @"ab";
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
