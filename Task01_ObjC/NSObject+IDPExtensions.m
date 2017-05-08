//
//  NSObject+IDPExtension.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "NSObject+IDPExtensions.h"
#import "NSArray+IDPExtensions.h"
#import "IDPPerson.h"
#import "IDPConstants.h"

@implementation NSObject (IDPExtensions)

+ (instancetype)object {
    return [[[self alloc] init] autorelease];
}

+ (NSArray *)objectsWithCount:(NSUInteger)count {
    NSArray *objects = [NSArray objectsWithCount:kIDPMaxArrayLength factoryBlock:^ {
        return [self object];
    }];
    
    return objects;
}

@end
