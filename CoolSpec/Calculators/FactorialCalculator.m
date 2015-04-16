//
//  FactorialCalculator.m
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/15/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import "FactorialCalculator.h"

@interface FactorialCalculator ()

@property (nonatomic, strong) id<CalculatorEngine>engine;
@property (nonatomic, strong) id<CalculatorLogger>logger;

@end

@implementation FactorialCalculator

- (instancetype)initWithEngine:(id<CalculatorEngine>)engine
                        logger:(id<CalculatorLogger>)logger;
{
    self = [super init];
    
    if (self) {
        self.engine = engine;
        self.logger = logger;
    }
    
    return self;
}

- (void)calculateAndLogNumber:(NSNumber *)number
{
    NSNumber *result = [self.engine calculate:number];
    [self.logger logNumber:result];
}

@end
