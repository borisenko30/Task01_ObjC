//
//  main.m
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "Person.h"
#import "NSObject+IDPCategory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person new] autorelease];
        [p initArrayWithObjectsCount:5];
        [p sayHi];
        
        NSLog(@"-----");
        [p genderCheck];
    
    }
    return 0;
}
