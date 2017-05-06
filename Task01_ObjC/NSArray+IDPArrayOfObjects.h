//
//  NSArray+IDPExtension.h
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPImportFiles.h"

@interface NSArray (IDPArrayOfObjects)

+ (instancetype)arrayOfObjectsWithCount:(NSInteger)count factoryBlock:(id (^)(void))block;

@end
