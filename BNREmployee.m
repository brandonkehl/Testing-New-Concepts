//
//  BNREmployee.m
//  BMITime
//
//  Created by brandon kehl on 11/27/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

// A class extension
@interface BNREmployee ()
{
    NSMutableSet * _assets;
    
}

@property (nonatomic) unsigned int officeAlarmCode;

@end
// End of class extension


@implementation BNREmployee

// Accessors for assets properties
-(void)setAssets:(NSArray *)a
{

    _assets = [a mutableCopy];
    

}
- (NSArray *)assets
{
    
    return [_assets copy];

}
-(void)addAsset:(BNRAsset *)a
{

    // Is assets nil?
    if(! _assets){
    
        // Create the array
        _assets = [[NSMutableSet alloc] init];
    
    
    
    }
    [_assets addObject:a];
    a.holder = self;

}
-(unsigned int)valueOfAssets
{

    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for(BNRAsset *a in _assets){
    
        sum += [a resaleValue];
    
    }

    return sum;

}

//Implement the method
-(double)yearsOfEmployment
{

    //Do I have a non-nil hireDate?
    if (self.hireDate) {
        // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; //Number of seconds in one year
        
    } else{
    
        return 0;
    
    
    }


}


- (float)bodyMassIndex
{

    float normalBMI =[super bodyMassIndex];
    return normalBMI * 0.9;
    
}
-(NSString *)description
{

    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",
                                            self.employeeID, self.valueOfAssets];


}
-(void)dealloc
{
    NSLog(@"deallocating %@", self);

}


@end
