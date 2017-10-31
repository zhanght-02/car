//
//  carsModel.h
//  作业汽车商标
//
//  Created         
//  Copyright (c)     All rights reserved.
//

#import <Foundation/Foundation.h>
#import "car.h"
@interface carsModel : NSObject

@property (nonatomic, strong) NSArray * cars;

@property (nonatomic, copy) NSString * title;

@property (nonatomic, strong) NSMutableArray * carsmArray;

+ (instancetype)carsWithDict:(NSDictionary *)dict;

- (instancetype)initWithDict:(NSDictionary *)dict;

@end
