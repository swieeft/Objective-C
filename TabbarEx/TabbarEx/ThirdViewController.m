//
//  ThirdViewController.m
//  TabbarEx
//
//  Created by Park GilNam on 31/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

@synthesize resultLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)thirdAction:(id)sender {
    resultLabel.text = @"3번 버튼이 눌렸습니다";
}
@end
