//
//  main.m
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *names = @[@"Alex", @"Henry", @"Anna", @"Jack", @"Mike", @"Elsa", @"Goga"];
        Person *p = [[Person new] autorelease];

        Person *c1 = [p giveBirth];
        c1.name = @"Alex";
        [p addChild:c1];
        
        Person *c2 = [p giveBirth];
        c2.name = @"Henry";
        [p addChild:c2];
        
        Person *cc1 = [[Person new] autorelease];
        cc1.name = @"Anna";
        cc1.gender = Female;
        [c2 addChild:cc1];
        
        NSLog(@"-----");
        [p genderCheck];
        /*
        NSArray *arr = [p childrenArray];
        for (Person *p in arr) {
            NSLog(@"%@", p.name);
        }
         */
    
    }
    return 0;
}
