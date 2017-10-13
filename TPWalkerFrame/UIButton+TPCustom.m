//
//  UIButton+TPCustom.m
//  TPFrame
//
//  Created by huangwei on 2017/10/13.
//  Copyright © 2017年 ccpg_it. All rights reserved.
//

#import "UIButton+TPCustom.h"
#import "UIView+TPFrameExtension.h"
#define weak __weak typeof(self) weakSelf = self;

@implementation UIButton (TPCustom)

- (ButtonImageX)imageX{
    weak
    return ^UIButton *(CGFloat imageX){
        weakSelf.imageView.x = imageX;
        [self layoutIfNeeded];
        return self;
    };
}

- (ButtonImageY)imageY{
    weak
    return ^UIButton *(CGFloat imageY){
        weakSelf.imageView.y = imageY;
        [self setNeedsLayout];
        return self;
    };
}

- (ButtonImageW)imageW{
    weak
    return ^UIButton *(CGFloat imageW){
        weakSelf.imageView.width = imageW;
        [self setNeedsLayout];
        return self;
    };
}
- (ButtonImageH)imageH{
    weak
    return ^UIButton *(CGFloat imageH){
        weakSelf.imageView.height = imageH;
        [self setNeedsLayout];
        return self;
    };
}

- (ButtonLabelX)labelX{
    weak
    return ^UIButton *(CGFloat labelX){
        weakSelf.titleLabel.x = labelX;
        [self setNeedsLayout];
        return self;
    };
}

- (ButtonLabelY)labelY{
    weak
    return ^UIButton *(CGFloat labelY){
        weakSelf.titleLabel.y = labelY;
        [self setNeedsLayout];
        return self;
    };
}

- (ButtonLabelW)labelW{
    weak
    return ^UIButton *(CGFloat labelW){
        weakSelf.titleLabel.width = labelW;
        [self setNeedsLayout];
        return self;
    };
}
- (ButtonLabelH)labelH{
    weak
    return ^UIButton *(CGFloat labelH){
        weakSelf.titleLabel.height = labelH;
        [self setNeedsLayout];
        return self;
    };
}
- (void)layoutSubviews{
    [super layoutSubviews];
}

@end
