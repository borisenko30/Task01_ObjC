//
//  NSObject+IDPCategory.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "NSObject+IDPCategory.h"

@implementation NSObject (IDPCategory)

+ (NSUInteger)randUpTo:(uint32_t)max {
    return arc4random_uniform(max);
}

+ (NSUInteger)randStartWith:(uint32_t)start range:(uint32_t)range {
    return arc4random_uniform(range) + start;
}

+ (BOOL)randBoolean {
    return arc4random_uniform(2);
}

@end
