//
//  IDPPersonTests.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPPersonTests.h"
#import "IDPPerson.h"
#import "IDPConstants.h"
#import "NSObject+IDPFactoryObject.h"
#import "NSArray+IDPArrayOfObjects.h"

void IDPPersonTest() {
    NSArray *childrenArray = [NSArray arrayOfObjectsWithCount:kIDPMaxArrayLength
                                                 factoryBlock:^ {
                                                    return [IDPPerson object];
                                                 }];
    for (IDPPerson *person in childrenArray) {
        if (person.gender == IDPMale) {
            [person makeWarNotLove];
        } else {
            [person child];
        }
    }
}
