//
//  car.m
//  作业汽车商标
//
//  Created      
//  Copyright (c)     All rights reserved.
//

#import "car.h"

@implementation car

+ (instancetype)carWithCar:(NSDictionary *)dict
{
    return [[self alloc] initWithCar:dict];
}


- (instancetype)initWithCar:(NSDictionary *)dict
{
    if (self == [super init]) {
        self.icon = dict[@"icon"];
        self.name = dict[@"name"];
    }
    return self;
}

@end
