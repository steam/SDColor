//
//  SDViewController.m
//  SDColor
//
//  Created by Sean Dougherty on 1/27/14.
//  Copyright (c) 2014 Sean Dougherty. All rights reserved.
//

#import "SDViewController.h"
#import "UIColor+SDColor.h"


@interface SDViewController ()

@property (nonatomic, weak) IBOutlet UIView *square;

@end


@implementation SDViewController

- (IBAction)tapCyan:(id)sender
{
    self.square.backgroundColor = [UIColor hex:0x00ffff];
}

- (IBAction)tapMagenta:(id)sender
{
    self.square.backgroundColor = [UIColor hex:0xff00ff];
}

- (IBAction)tapYellow:(id)sender
{
    self.square.backgroundColor = [UIColor hex:0xffff00];
}

- (IBAction)tapBlack:(id)sender
{
    self.square.backgroundColor = [UIColor hex:0x000000 alpha:0.5];
}

@end
