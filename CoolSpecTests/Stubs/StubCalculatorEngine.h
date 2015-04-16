//
//  StubCalculatorEngine.h
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/16/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorEngine.h"

@interface StubCalculatorEngine : NSObject <CalculatorEngine>

@property (nonatomic, strong) NSNumber *latestPassedNumber;

- (NSNumber *)calculate:(NSNumber *)number;

@end
