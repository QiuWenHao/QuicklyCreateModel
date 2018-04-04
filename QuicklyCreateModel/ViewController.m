//
//  ViewController.m
//  QuicklyCreateModel
//
//  Created by wenHao Qiu on 2018/4/4.
//  Copyright © 2018年 文豪. All rights reserved.
//

#import "ViewController.h"
#import "QuicklyCreateModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
}

- (void)loadData{
    
    NSDictionary *dict = [[NSDictionary alloc] init];
    //dict就是从网络获取的json数据转化为的字典，这里用假数据代替
    dict = @{@"name":@"文豪",@"sex":@"男",@"age":@"26",@"education":@"本科"};
    
    //根据数据创建模型，如果参数多的时候就不用手动去一个一个@property了，运行一下会自动打印出来，只需要复制粘贴，为开发节约了时间
    [QuicklyCreateModel createModelWithDictionary:dict modelName:@"userModel"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
