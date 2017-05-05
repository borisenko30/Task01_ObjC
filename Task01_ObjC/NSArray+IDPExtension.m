//
//  NSArray+IDPExtension.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "NSArray+IDPExtension.h"

@implementation NSArray (IDPExtension)

+ (instancetype)objectsWithCount:(NSInteger)count factoryBlock:(id(^)(void))block{
    NSMutableArray *array = [NSMutableArray object];
    for (int i = 0; i < count; i++) {
        [array addObject:block()];
    }
    
    return array;
}

@end
