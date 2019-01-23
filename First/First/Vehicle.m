//
//  Vehicle.m
//  First
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

@synthesize wheels;
@synthesize seats;
//-(void)setWheels : (int)w {
//    wheels = w;
//}
//
//-(void)setSeats : (int)s {
//    seats = s;
//}
//
//-(int)wheels {
//    return wheels;
//}
//
//-(int)seats {
//    return seats;
//}

-(void)print {
    NSLog(@"wheels : %i, seat : %i", wheels, seats);
}

-(void)setWheels: (int)w Seats:(int)s {
    wheels = w;
    seats = s;
}

-(void)drawCircleX: (int)x Y:(int)y R:(int)r {
    NSLog(@"%i, %i, %i", x, y, r);
}

-(void)drawCircleXYR: (int)x : (int)y : (int)r {
    NSLog(@"%i, %i, %i", x, y, r);
}

@end
