//
//  ViewController.m
//  作业汽车商标
//
//  Created
//  Copyright (c)     All rights reserved.
//

#import "ViewController.h"
#import "carsModel.h"
#define SIZE self.view.bounds.size
#import "car.h"
@interface ViewController ()

@property (nonatomic, strong) NSArray * carsArray;

@end

@implementation ViewController

- (NSArray *)carsArray
{
    if (_carsArray == nil) {
        _carsArray = [[NSArray alloc] init];
        NSString * path = [[NSBundle mainBundle] pathForResource:@"cars.plist" ofType:nil];
        NSArray * array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray * mArray = [[NSMutableArray alloc] init];
        for (NSDictionary * dict in array) {
            carsModel * carModel = [carsModel carsWithDict:dict];
            [mArray addObject:carModel];
        }
        _carsArray = mArray;
    }
    return _carsArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView * tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SIZE.width, SIZE.height) style:UITableViewStylePlain];
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
//    tableView.rowHeight = 80.f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.carsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    carsModel * carModel = self.carsArray[section];
    
    return  carModel.cars.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //会询问复用池 有没有可以复用cell 打标记hero 有的话 随便给我弄一个 如果没有 返回nil
    static NSString * ID = @"car";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.tag = indexPath.row;
    }
    NSLog(@"%lu", cell.tag);
    carsModel * carModel = self.carsArray[indexPath.section];
    
    
    cell.textLabel.text = [carModel.carsmArray[indexPath.row] name];
   
    NSString * str = [NSString stringWithFormat:@"%@", [carModel.carsmArray[indexPath.row] icon]];
    
    cell.imageView.image = [UIImage imageNamed:str];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    carsModel * carModel = self.carsArray[section];
    return carModel.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
