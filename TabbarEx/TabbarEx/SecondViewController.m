//
//  SecondViewController.m
//  TabbarEx
//
//  Created by Park GilNam on 31/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize resultLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)secondAction:(id)sender {
    resultLabel.text = @"2번 버튼이 눌렸습니다";
}
@end
