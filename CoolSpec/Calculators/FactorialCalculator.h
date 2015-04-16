//
//  FactorialCalculator.h
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/15/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CalculatorEngine.h"
#import "CalculatorLogger.h"

@interface FactorialCalculator : NSObject

- (instancetype)initWithEngine:(id<CalculatorEngine>)engine
                        logger:(id<CalculatorLogger>)logger;

- (void)calculateAndLogNumber:(NSNumber *)number;

@end
