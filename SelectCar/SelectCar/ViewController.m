//
//  ViewController.m
//  SelectCar
//
//  Created by Park GilNam on 30/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    companyName = [[NSArray alloc] initWithObjects:@"테슬라", @"람보르기니", @"포르쉐", nil];
    carModal = [[NSArray alloc] init];
    carModalImageNames = [[NSArray alloc] init];
    
    tesla = [[NSArray alloc] initWithObjects:@"모델S", @"모델X", nil];
    teslaImageNames = [[NSArray alloc] initWithObjects:@"tesla-model-s", @"tesla-model-x", nil];
    
    lamborghini = [[NSArray alloc] initWithObjects:@"아벤타도르", @"베네노", @"우라칸", nil];
    lamborghiniImageNames = [[NSArray alloc] initWithObjects:@"lamborghini-aventador", @"lamborghini-veneno", @"lamborghini-huracan", nil];
    
    porsche = [[NSArray alloc] initWithObjects:@"911", @"박스터", nil];
    porscheImageNames = [[NSArray alloc] initWithObjects:@"porsche-911", @"porsche-boxter", nil];
    
    carModal = tesla;
    carModalImageNames = teslaImageNames;
    
    imageView.layer.cornerRadius = 50;
    imageView.layer.masksToBounds = YES;
}


- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return companyName.count;
    } else {
        return carModal.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == 0) {
        return [companyName objectAtIndex:row];
    } else {
        return [carModal objectAtIndex:row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0 && row == 0) {
        carModal = tesla;
        carModalImageNames = teslaImageNames;
    } else if (component == 0 && row == 1) {
        carModal = lamborghini;
        carModalImageNames = lamborghiniImageNames;
    } else if (component == 0 && row == 2) {
        carModal = porsche;
        carModalImageNames = porscheImageNames;
    }
    
    [pickerView reloadAllComponents];
    
    imageView.image = [UIImage imageNamed: [carModalImageNames objectAtIndex:[pickerView selectedRowInComponent:1]]];
}

@end
