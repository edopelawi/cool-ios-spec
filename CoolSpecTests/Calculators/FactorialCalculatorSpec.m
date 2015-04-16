//
//  FactorialCalculatorSpec.m
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/15/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import "FactorialCalculator.h"
#import "StubCalculatorEngine.h"
#import "FakeCalculatorLogger.h"

SpecBegin(FactorialCalculator)

__block FactorialCalculator *calculator;
__block StubCalculatorEngine *calculatorEngine;
__block FakeCalculatorLogger *calculatorLogger;

beforeEach(^{
    calculatorEngine = [StubCalculatorEngine new];
    calculatorLogger = OCMPartialMock([FakeCalculatorLogger new]);
    
    calculator = [[FactorialCalculator alloc] initWithEngine:calculatorEngine
                                                      logger:calculatorLogger];
});

describe(@"calculateAndLogNumber: method", ^{
    __block NSNumber *number = @777;
    
    __block NSNumber *passedNumber;
    
    beforeEach(^{
        OCMStub([calculatorLogger logNumber:[OCMArg any]])
        .andDo(^(NSInvocation *invocation){
            [invocation retainArguments];
            [invocation getArgument:&passedNumber atIndex:2];
        });
        
        [calculator calculateAndLogNumber:number];
    });
    
    it(@"should pass parameter to engine", ^{
        expect(calculatorEngine.latestPassedNumber).to.equal(number);
    });
    
    it(@"should call logger's logNumber method", ^{
        NSNumber *result = calculatorEngine.staticResult;
        OCMVerify([calculatorLogger logNumber:result]);
    });

});

SpecEnd
