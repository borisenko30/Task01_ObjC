//
//  Person.m
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "Person.h"
#import "NSObject+IDPCategory.h"

@interface Person ()

@property (nonatomic, readwrite) NSMutableArray        *childrenArray;

@end

@implementation Person

@dynamic children;

- (void)dealloc {
    self.name = nil;
    self.weight = nil;
    self.childrenArray = nil;
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.gender = Male;
        self.name = @"John Doe";
        self.weight = @100;
        self.age = 25;
        self.childrenArray = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name gender:(Gender)gender weight:(NSNumber *)weight age:(NSUInteger)age{
    self = [super init];
    if (self) {
        self.gender = [NSObject randBoolean];
        self.name = name;
        self.weight = weight;
        self.age = age;
        self.childrenArray = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray *)initArrayWithObjectsCount:(NSUInteger) count {
    NSArray *names = @[@"Jack", @"Mike", @"Alex", @"John", @"Anna", @"Jane"];
    NSMutableArray *arr = self.childrenArray;
    arr = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        Person *p = [[Person new] autorelease];
        NSString *name = names[[NSObject randUpTo:(uint32_t)names.count]];
        BOOL gender = [NSObject randBoolean];
        NSNumber *weight = [NSNumber numberWithInteger:[NSObject randStartWith:50 range:100]];
        NSUInteger age = [NSObject randStartWith:1 range:100];
        [p initWithName:name gender:gender weight:weight age:age];
        [arr addObject:p];
    }
    self.childrenArray = arr;
    
    return arr;
}

- (Person *)giveBirth {
    Person *p = [[Person new] autorelease];
    NSLog(@"A new person was born!");
    
    return p;
}

- (void)makeWarNotLove {
    NSLog(@"You're in the army now!\nGo and kill somebody!");
}

- (NSArray *)children {
    return [[self.childrenArray copy] autorelease];
}

- (void)addChild:(Person *)child {
        [self.childrenArray addObject:child];
    
}

- (void) removeLastChild {
    [self.childrenArray removeLastObject];
}

- (void)removeChildAtIndex:(NSUInteger)index {
    [self.childrenArray removeObjectAtIndex:index];
}

- (void)sayHi {
    NSLog(@"Hi! My name is %@ -- %@", self.name, self);
        for (Person *p in self.childrenArray) {
            [p sayHi];
        }
}

- (void)genderCheck {
    for (Person *p in self.childrenArray) {
        if (p.gender == Male) {
            [p makeWarNotLove];
        } else {
            [p giveBirth];
        }
    }
}

@end
