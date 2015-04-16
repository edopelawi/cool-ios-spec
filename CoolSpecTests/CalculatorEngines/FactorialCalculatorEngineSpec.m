//
//  FactorialCalculatorEngineSpec.m
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/16/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import "FactorialCalculatorEngine.h"
#import "CalculatorEngine.h"

SpecBegin(FactorialCalculatorEngine)

__block FactorialCalculatorEngine *engine;

beforeEach(^{
    engine = [FactorialCalculatorEngine new];
});

it(@"should conform CalculatorEngine protocol", ^{
    expect(engine).to.conformTo(@protocol(CalculatorEngine));
});

describe(@"calculate:", ^{
    
    it(@"should return 1 for 0", ^{
        expect([engine calculate:@0]).to.equal(@1);
    });
    
    it(@"should return 1 for 1", ^{
        expect([engine calculate:@1]).to.equal(@1);
    });
    
    it(@"should return 2 for 2", ^{
        expect([engine calculate:@2]).to.equal(@2);
    });
    
    it(@"should return 6 for 3", ^{
        expect([engine calculate:@3]).to.equal(@6);
    });
    
    it(@"should return 24 for 4", ^{
        expect([engine calculate:@4]).to.equal(@24);
    });
    
    it(@"should return 120 for 5", ^{
        expect([engine calculate:@5]).to.equal(@120);
    });
    
    it(@"should return 3,628,800 for 10", ^{
        expect([engine calculate:@10]).to.equal(@3628800);
    });
});


SpecEnd