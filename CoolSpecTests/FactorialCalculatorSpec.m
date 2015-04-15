//
//  FactorialCalculatorSpec.m
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/15/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import "FactorialCalculator.h"

SpecBegin(FactorialCalculator)

__block FactorialCalculator *calculator;

beforeEach(^{
    calculator = [FactorialCalculator new];
});

describe(@"calculate:", ^{
    
    it(@"should return 1 for 0", ^{
        expect([calculator calculate:@0]).to.equal(@1);
    });
});

SpecEnd