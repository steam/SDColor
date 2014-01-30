//
//  SDColorTests.m
//  SDColorTests
//
//  Created by Sean Dougherty on 1/27/14.
//  Copyright (c) 2014 Sean Dougherty. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIColor+SDColor.h"

#define SPLIT_RESULT_TO_RGBA \
CGFloat red,green,blue,alpha;\
[color getRed:&red green:&green blue:&blue alpha:&alpha];

#define ACCURACY 0.002f

// Thanks to github user https://github.com/thisandagain for the reference on how to test these


@interface SDColorTests : XCTestCase

@end

@implementation SDColorTests

- (void)testBlack
{
    UIColor *color = [UIColor hex:0x000000];

    SPLIT_RESULT_TO_RGBA

    XCTAssertEqualWithAccuracy(red, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(green, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(blue, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(alpha, 1.0f, ACCURACY, @"");
}

- (void)testWhite
{
    UIColor *color = [UIColor hex:0xffffff];

    SPLIT_RESULT_TO_RGBA

    XCTAssertEqualWithAccuracy(red, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(green, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(blue, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(alpha, 1.0f, ACCURACY, @"");
}

- (void)testCyan
{
    UIColor *color = [UIColor hex:0x00ffff];

    SPLIT_RESULT_TO_RGBA

    XCTAssertEqualWithAccuracy(red, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(green, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(blue, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(alpha, 1.0f, ACCURACY, @"");
}

- (void)test25PercentCyan
{
    UIColor *color = [UIColor hex:0x00ffff alpha:0.25];

    SPLIT_RESULT_TO_RGBA

    XCTAssertEqualWithAccuracy(red, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(green, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(blue, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(alpha, 0.25f, ACCURACY, @"");
}

- (void)testMagenta
{
    UIColor *color = [UIColor hex:0xff00ff];

    SPLIT_RESULT_TO_RGBA

    XCTAssertEqualWithAccuracy(red, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(green, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(blue, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(alpha, 1.0f, ACCURACY, @"");
}

- (void)test50PercentRed
{
    UIColor *color = [UIColor hex:0xff0000 alpha:0.5];

    SPLIT_RESULT_TO_RGBA

    XCTAssertEqualWithAccuracy(red, 1.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(green, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(blue, 0.0f, ACCURACY, @"");
    XCTAssertEqualWithAccuracy(alpha, 0.5f, ACCURACY, @"");
}

@end
