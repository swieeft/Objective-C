//
//  ViewController.m
//  SignUpScreen
//
//  Created by Park GilNam on 24/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize nameTextField;
@synthesize idTextField;
@synthesize passwordTextField;
@synthesize telTextField;
@synthesize blogTextField;
@synthesize resultTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    nameTextField.delegate = self;
    idTextField.delegate = self;
    passwordTextField.delegate = self;
    telTextField.delegate = self;
    blogTextField.delegate = self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)signUpAction:(id)sender {
    NSString *strTemp = [NSString stringWithFormat: @"%@님 가입을 축하드립니다.", nameTextField.text];
    resultTextView.text = strTemp;
}

@end
