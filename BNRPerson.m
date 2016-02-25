//
//  BNRPerson.m
//  BMITime
//
//  Created by brandon kehl on 11/15/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex
{

    float h = [self heightInMeters ];
    return [self weightInKilos] / (h * h);

}



@end
