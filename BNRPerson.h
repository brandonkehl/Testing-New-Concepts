//
//  BNRPerson.h
//  BMITime
//
//  Created by brandon kehl on 11/15/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject


  
    // BNRPerson has two properties
    @property (nonatomic) float heightInMeters;
    @property (nonatomic) int weightInKilos;




// BNRPerson has a method that calculates the Body Mass Index
- (float) bodyMassIndex;

@end
