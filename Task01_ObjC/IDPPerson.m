//
//  Person.m
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

@interface IDPPerson ()

@property (nonatomic, retain) NSMutableArray        *mutableChildren;

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
        self.gender = IDPRandomBool()?IDPMale:IDPFemale;
        self.name = names[IDPRandom([names count])];
        self.weight = [NSNumber numberWithInteger:IDPRandomWithRange(NSMakeRange(kIDPMinWeight, kIDPWeightRange))];
        self.age = IDPRandom(kIDPMaxAge);
        self.mutableChildren = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name gender:(IDPGender)gender weight:(NSNumber *)weight age:(NSUInteger)age{
    self = [super init];
    if (self) {
        self.gender = [NSObject randBoolean];
        self.name = name;
        self.weight = weight;
        self.age = age;
        self.mutableChildren = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray *)initArrayWithObjectsCount:(NSUInteger) count {
    NSArray *names = @[@"Jack", @"Mike", @"Alex", @"John", @"Anna", @"Jane"];
    NSMutableArray *children = self.mutableChildren;
    children = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        IDPPerson *p = [[IDPPerson new] autorelease];
        NSString *name = names[[NSObject randUpTo:(uint32_t)names.count]];
        BOOL gender = [NSObject randBoolean];
        NSNumber *weight = [NSNumber numberWithInteger:[NSObject randStartWith:50 range:100]];
        NSUInteger age = [NSObject randStartWith:1 range:100];
        [p initWithName:name gender:gender weight:weight age:age];
        [children addObject:p];
    }
    
    self.mutableChildren = children;
    
    return children;
}

- (IDPPerson *)giveBirth {
    IDPPerson *person = [[IDPPerson new] autorelease];
    NSLog(@"A new person was born!");
    
    return person;
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
    }
}

- (void)removeLastChild {
    [self.mutableChildren removeLastObject];
}

- (void)removeChildAtIndex:(NSUInteger)index {
    NSMutableArray *children = self.mutableChildren;
    if (children.count > index) {
        [children removeObjectAtIndex:index];
    } else {
        NSLog(@"Error: wrong index!");
    }
}

- (void)sayHi {
    NSLog(@"Hi! My name is %@ -- %@", self.name, self);
    for (IDPPerson *person in self.mutableChildren) {
        [person sayHi];
    }
}

- (void)genderCheck {
    for (IDPPerson *person in self.mutableChildren) {
        if (person.gender == IDPMale) {
            [person makeWarNotLove];
        } else {
            [person giveBirth];
        }
    }
}

@end
