//
//  ViewController.m
//  TPFrame
//
//  Created by ccpg_it on 17/5/31.
//  Copyright © 2017年 ccpg_it. All rights reserved.
//

#import "ViewController.h"
#import "UIView+WalkerFrame.h"
#import "TempViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *son;
@property (weak, nonatomic) IBOutlet UIView *superView;
@property (weak, nonatomic) IBOutlet UIView *other;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)jump:(id)sender {
    
    TempViewController *vc = [[TempViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"son==%@",NSStringFromCGRect(self.son.frame));
    NSLog(@"superView==%@",NSStringFromCGRect(self.superView.frame));
    NSLog(@"other==%@",NSStringFromCGRect(self.other.frame));
    
    UIView *tempView = [[UIView alloc] init];
    [self.view addSubview:tempView];
    tempView.size = CGSizeMake(50, 50);
    
    [tempView left_Margin:20 ToView:self.son];
    
    [tempView centerY_EqualsView:self.superView];
    
    //[tempView bottom_Margin:20 ToView:self.superView];
    
    tempView.backgroundColor = [UIColor greenColor];
    
    NSLog(@"tempView==%@",NSStringFromCGPoint(tempView.point));
    
    
}


@end
