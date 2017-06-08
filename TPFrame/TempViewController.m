//
//  TempViewController.m
//  TPFrame
//
//  Created by ccpg_it on 17/6/8.
//  Copyright © 2017年 ccpg_it. All rights reserved.
//

#import "TempViewController.h"
#import "UIView+WalkerFrame.h"
#import "TempCell.h"

@interface TempViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic , strong) UITableView *tableView;

@end

@implementation TempViewController

- (void)viewDidLoad {
    self.title = @"frame布局";
    
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[TempCell class] forCellReuseIdentifier:@"123"];
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    [self.tableView top_Margin:0 ToView:self.view];
    [self.tableView left_Margin:0 ToView:self.view];
    self.tableView.size = CGSizeMake(self.view.width, self.view.height);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TempCell *cell = [tableView dequeueReusableCellWithIdentifier:@"123"];
    
    return cell;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.autoresizingMask = NO;
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
