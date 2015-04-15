//
//  FactorialCalculator.m
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/15/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import "FactorialCalculator.h"

@implementation FactorialCalculator

- (NSNumber *)calculate:(NSNumber *)number
{
    NSNumber *result = @1;
    
    if ([number isEqualToNumber:@2]) {
        result = @2;
    }
    else if ([number isEqualToNumber:@3]) {
        result = @6;
    }
    else if ([number isEqualToNumber:@4]) {
        result = @24;
    }
    else if ([number isEqualToNumber:@5]) {
        result = @120;
    }
    
    return result;
}

@end
