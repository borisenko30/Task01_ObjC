//
//  Person.m
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPPerson.h"

#import "IDPRandom.h"
#import "IDPConstants.h"

#import "NSObject+IDPExtensions.h"

@interface IDPPerson ()
@property (nonatomic, retain) NSMutableArray *mutableChildren;

@end

@implementation IDPPerson

@dynamic children;

- (void)dealloc {
    self.name = nil;
    self.weight = nil;
    self.mutableChildren = nil;
    
    [super dealloc];
}

- (instancetype)init {
    NSArray *names = @[@"Jack", @"Mike", @"Alex", @"John", @"Anna", @"Jane"];
    self = [super init];
    if (self) {
        self.gender = IDPRandomBool() ? IDPMale : IDPFemale;
        self.name = names[IDPRandom(names.count)];
        self.weight = [NSNumber numberWithInteger:IDPRandomWithRange(IDPWeightRange)];
        self.age = IDPRandom(IDPPersonMaxAge);
        self.mutableChildren = [NSMutableArray array];
    }
    
    return self;
}

- (IDPPerson *)child {
    IDPPerson *child = [IDPPerson object];
    NSLog(@"A new person was born!");
    
    return child;
}

- (void)makeWarNotLove {
    NSLog(@"You're in the army now!\nGo and kill somebody!");
}

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

- (void)addChild:(IDPPerson *)child {
    if (child) {
        [self.mutableChildren addObject:child];
    } else {
        NSLog(@"Can not add null object!");
    }
}

- (void)removeChild:(IDPPerson *)child {
    [self.mutableChildren removeObject:child];
}

- (void)sayHi {
    NSLog(@"Hi! My name is %@ - %@", self.name, self);
    for (IDPPerson *person in self.mutableChildren) {
        [person sayHi];
    }
}

@end
