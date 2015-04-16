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
    
    
    if (number.integerValue > 1) {
        NSNumber *lowerNumber = @(number.integerValue - 1);
        NSInteger resultInteger = number.integerValue * [self calculate:lowerNumber].integerValue;
        
        result = @(resultInteger);
    }
    
    return result;
}

@end
