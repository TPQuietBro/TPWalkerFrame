//
//  TempCell.m
//  TPFrame
//
//  Created by ccpg_it on 17/6/8.
//  Copyright © 2017年 ccpg_it. All rights reserved.
//

#import "TempCell.h"
#import "UIView+WalkerFrame.h"

@interface TempCell()

@property (nonatomic , strong) UIImageView *image;
@property (nonatomic , strong) UILabel *label1;
@property (nonatomic , strong) UILabel *label2;

@end

@implementation TempCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.image];
        [self addSubview:self.label1];
        [self addSubview:self.label2];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self.image left_Margin:10 ToView:self];
    self.image.size = CGSizeMake(20, 20);
    [self.image centerY_EqualsView:self];
    
    [self.label1 left_Margin:20 ToView:self.image];
    [self.label1 top_Margin:5 ToView:self];
    [self.label1 sizeToFit];
    
    [self.label2 left_Margin:20 ToView:self.image];
    [self.label2 top_Margin:10 ToView:self.label1];
    [self.label2 setSize:CGSizeMake(30, 30)];
    
}

- (UILabel *)label2{
    if (!_label2) {
        _label2 = [[UILabel alloc] init];
        _label2.text = @"4";
        _label2.textAlignment = NSTextAlignmentCenter;
        _label2.layer.cornerRadius = 15;
        _label2.layer.masksToBounds = YES;
        _label2.backgroundColor = [UIColor colorWithRed:255.0/255 green:68.0/255 blue:0/255 alpha:0.5];
        _label2.textColor = [UIColor redColor];
    }
    return _label2;
}
- (UILabel *)label1{
    if (!_label1) {
        _label1 = [[UILabel alloc] init];
        _label1.text = @"我叫王豆豆";
        _label1.textColor = [UIColor orangeColor];
    }
    return _label1;
}

- (UIImageView *)image{
    if (!_image) {
        _image = [[UIImageView alloc] init];
        _image.image = [UIImage imageNamed:@"ad_default_good_guide1"];
    }
    return _image;
}

@end
