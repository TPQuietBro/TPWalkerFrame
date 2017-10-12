//
//  TPScreenAdaptor.m
//  KYTipAlertView
//
//  Created by 唐鹏 on 2017/7/6.
//  Copyright © 2017年 唐鹏. All rights reserved.
//

#import "TPScreenAdaptor.h"

#define TP_IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define TP_IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define TP_IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define TP_SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define TP_SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define TP_SCREEN_MAX_LENGTH (MAX(TP_SCREEN_WIDTH, TP_SCREEN_HEIGHT))
#define TP_SCREEN_MIN_LENGTH (MIN(TP_SCREEN_WIDTH, TP_SCREEN_HEIGHT))

#define TP_IS_IPHONE_4_OR_LESS (TP_IS_IPHONE && TP_SCREEN_MAX_LENGTH < 568.0)
#define TP_IS_IPHONE_5 (TP_IS_IPHONE && TP_SCREEN_MAX_LENGTH == 568.0)
#define TP_IS_IPHONE_6 (TP_IS_IPHONE && TP_SCREEN_MAX_LENGTH == 667.0)
#define TP_IS_IPHONE_6P (TP_IS_IPHONE && TP_SCREEN_MAX_LENGTH == 736.0)
#define TP_IS_IPHONE_X (TP_IS_IPHONE && TP_SCREEN_MAX_LENGTH == 812.0)

#define TP_IPHONE_4_HEIGHT_PX 960.0
#define TP_IPHONE_5_HEIGHT_PX 1136.0
#define TP_IPHONE_6_HEIGHT_PX 1334.0
#define TP_IPHONE_6P_HEIGHT_PX 1920.0
#define TP_IPHONE_X_HEIGHT_PX 2436.0

#define TP_IPHONE_5_WIDTH_PX 640.0
#define TP_IPHONE_6_WIDTH_PX 750.0
#define TP_IPHONE_6P_WIDTH_PX 1080.0
#define TP_IPHONE_X_WIDTH_PX 1125.0

@implementation TPScreenAdaptor
+ (CGFloat)pxWidthWithNumber:(CGFloat)number{
    
    CGFloat width = 0;
    if (TP_IS_IPHONE_5 || TP_IS_IPHONE_4_OR_LESS) {
        //iphone4/5有些特殊,需要像素点的1/2.5倍才会比较合适
        width = number / 2.5;
    }else if (TP_IS_IPHONE_6){
        width = TP_SCREEN_WIDTH / TP_IPHONE_6_WIDTH_PX * number;
    }else if (TP_IS_IPHONE_6P){
        width = TP_SCREEN_WIDTH / TP_IPHONE_6_WIDTH_PX * number;
    }else if (TP_IS_IPHONE_X){
        width = TP_SCREEN_WIDTH / TP_IPHONE_6_WIDTH_PX * number;
    }
    return width;
}
+ (CGFloat)pxHeightWithNumber:(CGFloat)number{
    
    CGFloat height = 0;
    if (TP_IS_IPHONE_4_OR_LESS || TP_IS_IPHONE_5) {
        height = number / 2.5;
    }else if (TP_IS_IPHONE_6){
        height = TP_SCREEN_WIDTH / TP_IPHONE_6_WIDTH_PX * number;
    }else if (TP_IS_IPHONE_6P){
        height = TP_SCREEN_WIDTH / TP_IPHONE_6_WIDTH_PX * number;
    }else if (TP_IS_IPHONE_X){
        height = TP_SCREEN_WIDTH / TP_IPHONE_6_WIDTH_PX * number;
    }
    return height;
}
@end
