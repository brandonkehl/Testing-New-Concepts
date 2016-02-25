//
//  BNREmployee.h
//  BMITime
//
//  Created by brandon kehl on 11/27/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

-(double)yearsOfEmployment;
-(void)addAsset:(BNRAsset *)a;
-(unsigned int)valueOfAssets;

@end
