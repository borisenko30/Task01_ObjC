//
//  Person.m
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "Person.h"

@implementation Person

@dynamic childrenArray;

- (void)dealloc {
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.gender = Male;
        self.name = @"John Doe";
        self.weight = @100;
        self.age = 25;
    }
    
    return self;
}

- (Person *)giveBirth {
    Person *p = [[Person new] autorelease];
    NSLog(@"A new person was born!");
    
    return p;
}

- (void)makeWarNotLove {
    NSLog(@"You're in the army now!\nGo and kill somebody!");
}

- (NSArray *)childrenArray {
    return [[[[[NSArray alloc] initWithArray:self.children] autorelease] copy] autorelease];
}

- (void)addChild:(Person *)child {
    if (self.children) {
        [self.children addObject:child];
    } else {
        self.children = [[NSMutableArray new] autorelease];
        [self.children addObject:child];
    }
    
}

- (void) removeLastChild {
    [self.children removeLastObject];
}

- (void)removeChildAtIndex:(NSUInteger)index {
    [self.children removeObjectAtIndex:index];
}

- (void)sayHi {
    NSLog(@"Hi! My name is %@ -- %@", self.name, self);
    if (self.children) {
        for (Person *p in self.children) {
            [p sayHi];
        }
    }
}

- (void)genderCheck {
    for (Person *p in self.children) {
        if (p.gender == Male) {
            [p makeWarNotLove];
        } else {
            [p giveBirth];
        }
    }
}

@end
