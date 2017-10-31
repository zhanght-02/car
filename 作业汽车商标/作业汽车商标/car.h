//
//  car.h
//  作业汽车商标
//
//  Created         
//  Copyright (c)     All rights reserved.
//

#import <Foundation/Foundation.h>
#import "carsModel.h"
@interface car : NSObject

@property (nonatomic, copy) NSString * icon;

@property (nonatomic, copy) NSString * name;

- (instancetype)initWithCar:(NSDictionary *)dict;

+ (instancetype)carWithCar:(NSDictionary *)dict;
@end
