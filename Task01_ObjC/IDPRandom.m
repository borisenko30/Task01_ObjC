//
//  IDPRandom.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSUInteger IDPRandom(NSUInteger max);
static NSUInteger IDPRandomWithRange(NSRange range);
static NSUInteger IDPRandomBool();

NSUInteger IDPRandom(NSUInteger max) {
    return arc4random_uniform(max);
}

NSUInteger IDPRandomWithRange(NSRange range){
    return IDPRandom(range.length) + range.location;
}

NSUInteger IDPRandomBool() {
    return IDPRandom(2);
}
