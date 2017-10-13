//
//  UIButton+TPCustom.h
//  TPFrame
//
//  Created by huangwei on 2017/10/13.
//  Copyright © 2017年 ccpg_it. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIButton *(^ButtonImageX)(CGFloat imageX);
typedef UIButton *(^ButtonImageY)(CGFloat imageY);
typedef UIButton *(^ButtonImageW)(CGFloat imageW);
typedef UIButton *(^ButtonImageH)(CGFloat imageH);

typedef UIButton *(^ButtonLabelX)(CGFloat labelX);
typedef UIButton *(^ButtonLabelY)(CGFloat labelY);
typedef UIButton *(^ButtonLabelW)(CGFloat labelW);
typedef UIButton *(^ButtonLabelH)(CGFloat labelH);

@interface UIButton (TPCustom)
/*
 * 图片的frame
 */
- (ButtonImageX)imageX;
- (ButtonImageY)imageY;
- (ButtonImageW)imageW;
- (ButtonImageH)imageH;
/*
 * 文字的frame
 */
- (ButtonLabelX)labelX;
- (ButtonLabelY)labelY;
- (ButtonLabelW)labelW;
- (ButtonLabelH)labelH;

@end
