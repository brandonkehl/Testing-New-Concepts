//
//  BNRAsset.m
//  BMITime
//
//  Created by brandon kehl on 11/29/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"


@implementation BNRAsset
-(NSString *)description
{
    // Is holder non-nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                self.label, self.resaleValue];
    
    
    }

}

-(void)dealloc
{

    NSLog(@"deallocating %@", self);

}


@end
