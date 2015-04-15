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
    
    NSInteger maxIndex = number.integerValue;
    
    for (NSInteger index = 1; index < maxIndex; index++) {
        result = @((index+1) * result.integerValue);
    };
    
    return result;
}

@end
