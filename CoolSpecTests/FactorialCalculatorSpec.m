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
    
    it(@"should return 1 for 1", ^{
        expect([calculator calculate:@1]).to.equal(@1);
    });
    
    it(@"should return 2 for 2", ^{
        expect([calculator calculate:@2]).to.equal(@2);
    });
    
    it(@"should return 6 for 3", ^{
        expect([calculator calculate:@3]).to.equal(@6);
    });
    
    it(@"should return 24 for 4", ^{
        expect([calculator calculate:@4]).to.equal(@24);
    });
    
    it(@"should return 120 for 5", ^{
        expect([calculator calculate:@5]).to.equal(@120);
    });
    
});

SpecEnd