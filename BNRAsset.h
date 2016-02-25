//
//  BNRAsset.h
//  BMITime
//
//  Created by brandon kehl on 11/29/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;


@end
