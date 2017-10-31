//
//  carsModel.m
//  作业汽车商标
//
//  Created         
//  Copyright (c)     All rights reserved.
//

#import "carsModel.h"

@implementation carsModel

+ (instancetype)carsWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
       // self.cars = [[NSArray alloc] init];
        self.carsmArray = [[NSMutableArray alloc] init];
        self.title = dict[@"title"];
        self.cars = dict[@"cars"];
        
        for (NSDictionary * dict in self.cars) {
            car * ca = [car carWithCar:dict];
            [self.carsmArray addObject:ca];
        }
    }
    return self;
}
@end
