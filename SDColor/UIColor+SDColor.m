//
//  UIColor+SDColor.m
//  SDColor
//
//  Created by Sean Dougherty on 1/27/14.
//  Copyright (c) 2014 Sean Dougherty. All rights reserved.
//

#import "UIColor+SDColor.h"

@implementation UIColor (SDColor)

+ (UIColor*)hex:(NSInteger)hex
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor*)hex:(NSInteger)hex alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:alpha];
}

@end
