//
//  StubCalculatorEngine.m
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/16/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import "StubCalculatorEngine.h"

@implementation StubCalculatorEngine

- (NSNumber *)calculate:(NSNumber *)number
{
    self.latestPassedNumber = number;
    return @123;
}

@end
