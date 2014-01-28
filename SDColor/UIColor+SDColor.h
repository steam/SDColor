//
//  UIColor+SDColor.h
//  SDColor
//
//  Created by Sean Dougherty on 1/27/14.
//  Copyright (c) 2014 Sean Dougherty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (SDColor)

/**
 Returns a new UIColor converted from a hex number.

 @param hex A hex number

 @return UIColor representing the passed hex

 [UIColor hex:0xffffff]; creates a new white UIColor
 */
+ (UIColor*)hex:(NSInteger)hex;

/**
 Returns a new UIColor converted from a hex number and alpha.

 @param hex A hex number
 @param alpha A float between 0.0 and 1.0

 @return UIColor representing the passed hex

 [UIColor hex:0x000000 alpha:0.5]; creates a new black UIColor at 0.5 alpha
 */
+ (UIColor*)hex:(NSInteger)hex alpha:(CGFloat)alpha;

@end
