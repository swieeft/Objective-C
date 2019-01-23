//
//  main.m
//  NSDictionaryTest
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSDictionary
        NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"아무개", @"이름", @"모름", @"나이", nil];
        
        NSLog(@"name: %@", [dic objectForKey:@"이름"]);
        NSLog(@"age: %@", [dic objectForKey:@"나이"]);
        
        // NSMutableDictionary
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        
        [mdic setObject:@"한국" forKey:@"사는곳"];
        [mdic setObject:@"180cm" forKey:@"키"];
        [mdic setObject:@"75kg" forKey:@"몸무게"];
        
        NSLog(@"m name: %@", [mdic objectForKey:@"이름"]);
        NSLog(@"m age: %@", [mdic objectForKey:@"나이"]);
        NSLog(@"m 사는곳: %@", [mdic objectForKey:@"사는곳"]);
        NSLog(@"m 키: %@", [mdic objectForKey:@"키"]);
        NSLog(@"m 나이: %@", [mdic objectForKey:@"몸무게"]);
    }
    return 0;
}
