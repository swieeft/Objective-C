//
//  FirstViewController.m
//  TabbarEx
//
//  Created by Park GilNam on 31/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize resultLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)firstAction:(id)sender {
    resultLabel.text = @"1번 버튼이 눌렸습니다";
}
@end
