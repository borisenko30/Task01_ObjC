//
//  IDPPersonTests.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPPersonTests.h"

void IDPPersonTest() {
    for (int i = 0; i < kIDPMaxCount; i++) {
        NSLog(@"%lu", IDPRandomWithRange(NSMakeRange(kIDPLocation, kIDPLength)));
    }
}
