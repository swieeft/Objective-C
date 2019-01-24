//
//  ViewController.m
//  DigitalFrame
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView;
@synthesize toggleButton;
@synthesize speedSlider;
@synthesize speedLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *arrImages = [[NSArray alloc]initWithObjects:
                          [UIImage imageNamed: @"1"],
                          [UIImage imageNamed: @"2"],
                          [UIImage imageNamed: @"3"],
                          [UIImage imageNamed: @"4"],
                          [UIImage imageNamed: @"5"],
                          [UIImage imageNamed: @"6"],
                          [UIImage imageNamed: @"7"],
                          [UIImage imageNamed: @"8"],
                          [UIImage imageNamed: @"9"],
                          [UIImage imageNamed: @"10"],
                          [UIImage imageNamed: @"11"],
                          [UIImage imageNamed: @"12"],
                          [UIImage imageNamed: @"13"],
                          [UIImage imageNamed: @"14"],
                          [UIImage imageNamed: @"15"],nil];
    
    
    imageView.animationImages = arrImages;
    imageView.animationDuration = 7.5;
}

-(IBAction) toggleAction: (id)sender {
    if ([imageView isAnimating]) {
        [imageView stopAnimating];
        [toggleButton setTitle: @"Start" forState: UIControlStateNormal];
    } else {
        [imageView startAnimating];
        [toggleButton setTitle: @"Stop" forState: UIControlStateNormal];
    }
}

-(IBAction) chageSpeedAction: (id)sender {
    imageView.animationDuration = 15 - speedSlider.value;
    [imageView startAnimating];
    [toggleButton setTitle: @"Stop" forState:UIControlStateNormal];
    
    NSString *strTemp = [[NSString alloc] initWithFormat: @"%.2f", speedSlider.value];
    speedLabel.text = strTemp;
}

@end
