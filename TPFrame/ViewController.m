//
//  ViewController.m
//  TPFrame
//
//  Created by ccpg_it on 17/5/31.
//  Copyright © 2017年 ccpg_it. All rights reserved.
//

#import "ViewController.h"
#import "TPFrame.h"
#import "TempViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *son;
@property (weak, nonatomic) IBOutlet UIView *superView;
@property (weak, nonatomic) IBOutlet UIView *other;
@property (weak, nonatomic) IBOutlet UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = YES;
    
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"123" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    button.imageX(10).imageY(0).imageW(22).imageH(22);
    button.labelX(10).labelY(22).labelW(50).labelH(28);
    
    [button setImage:[UIImage imageNamed:@"icon_gene_green"] forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 200, 100, 60);
    [self.view addSubview:button];
    
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
    
//    UIView *tempView = [[UIView alloc] init];
//    [self.view addSubview:tempView];
//    tempView.size = CGSizeMake(50, 50);
//    
//    
//    [tempView left_Margin:20 ToView:self.son];
//    
//    [tempView centerY_EqualsView:self.superView];
//    
//    //[tempView bottom_Margin:20 ToView:self.superView];
//    
//    tempView.backgroundColor = [UIColor greenColor];
//    
//    NSLog(@"tempView==%@",NSStringFromCGPoint(tempView.point));
    
//    
//    UIView *tempView1 = [[UIView alloc] init];
//    [self.view addSubview:tempView1];
//    tempView1.backgroundColor = [UIColor redColor];
////    [tempView1 widthConstraintsOffset:20 toView:self.view];
////    [tempView1 heightConstraintsOffset:30 toView:self.view];
//    [tempView1 widthConstraintsOffsetLeft:100 offsetRight:50 toView:self.view];
//    [tempView1 heightConstraintsOffsetTop:60 offsetBottom:60 toView:self.view];
//    [tempView1 left_Margin:100 ToView:self.view];
//    [tempView1 top_Margin:60 ToView:self.view];

    
    

    
}


@end
