//
//  main.m
//  First
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *hello = [[Vehicle alloc]init];
        
        // [Receiver Message] send or sent
//        [hello setWheels:4];
//        [hello setSeats:4];
//        hello.wheels = 4;
//        hello.seats = 2;
        
        [hello setWheels:4 Seats:4];
        [hello drawCircleX:1 Y:2 R:3];
        [hello drawCircleXYR:3 :2 :1];
        
//        [hello print];
//        NSLog(@"wheels : %i, seat : %i", [hello wheels], [hello seats]);
//        NSLog(@"wheels : %i, seat : %i", hello.wheels, hello.seats);
        
        if ([hello wheels] == 4) {
            NSLog(@"wheels : 4");
        } else if ([hello wheels] == 3) {
            NSLog(@"wheels : 3");
        } else {
            NSLog(@"no");
        }
        
        switch ([hello seats]) {
            case 4:
                NSLog(@"seats : 4");
                break;
            case 3:
                NSLog(@"seats : 3");
                break;
            case 2:
                NSLog(@"seats : 2");
                break;
            default:
                NSLog(@"no");
                break;
        }
        
        for (int i = 0; i < [hello wheels]; i++) {
            NSLog(@"wheels %i", i);
        }
        
        int i = 0;
        while (i < [hello seats]) {
            NSLog(@"seats %i", i);
            i++;
        }
    }
    
    return 0;
}
