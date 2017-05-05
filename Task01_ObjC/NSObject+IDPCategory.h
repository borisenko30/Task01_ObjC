//
//  NSObject+IDPCategory.h
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (IDPCategory)

+ (NSUInteger)randUpTo:(uint32_t)max;
+ (NSUInteger)randStartWith:(uint32_t)start range:(uint32_t)range;
+ (BOOL)randBoolean;

@end
