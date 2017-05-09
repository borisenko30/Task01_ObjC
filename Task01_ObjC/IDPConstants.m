//
//  IDPConstants.h
//  Task01_ObjC
//
//  Created by Admin on 06.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "IDPConstants.h"

#define constantInit(type, name, value) type const name = value;

constantInit(NSUInteger, IDPMaxArrayLength, 10)
constantInit(NSUInteger, IDPPersonMaxAge, 100)

NSRange const IDPWeightRange = {50, 100};
