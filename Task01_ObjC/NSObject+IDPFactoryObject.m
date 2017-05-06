//
//  NSObject+IDPExtension.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "NSObject+IDPFactoryObject.h"

@implementation NSObject (IDPFactoryObject)

+ (instancetype)object {
    return [[[self alloc] init] autorelease];
}

@end
