//
//  NSArray+IDPExtension.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "NSArray+IDPArrayOfObjects.h"
#import "NSObject+IDPFactoryObject.h"

@implementation NSArray (IDPArrayOfObjects)

+ (instancetype)arrayOfObjectsWithCount:(NSInteger)count factoryBlock:(id(^)(void))block {
    if (!block) {
        return nil;
    }
    
    NSMutableArray *array = [NSMutableArray object];
    for (int i = 0; i < count; i++) {
        [array addObject:block()];
    }
    
    return array;
}

@end
