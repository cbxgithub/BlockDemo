//
//  ViewController.m
//  BlockDemo
//
//  Created by 贺廷濬 on 2017/10/29.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+Sum.h"

@interface ViewController ()

@property (nonatomic, strong) Person *p;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *p = [Person new];
    //Block作为属性
    p.eat = ^{
        NSLog(@"吃饭了！");
    };
    _p = p;
    //Block作为方法参数 --- 函数式编程  --- 将逻辑代码放在一起，便于开发，提高程序可读性
    [_p eatWith:^{
        NSLog(@"吃了一顿大餐！");
    }];
    
    //Blcok作为方法的返回值
    void(^block)(int i)= _p.run;
    block(1);
    //上面这两行代码可以合并为下面这一行
    _p.run(1);
    
    //链式调用 --- Masonry框架 --- Blcok作为方法的返回值
    _p.travel(@"重庆").travel(@"北京");
    
    //仿照Masonry思想写的计算器
    int sum = [self CBX_makeSumWith:^(SumManager *manager) {
        manager.add(5).add(10).add(20);
    }];
    NSLog(@"%d",sum);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    _p.eat();
//    [_p eatWith:^{
//        NSLog(@"吃了一顿大餐！");
//    }];
}


@end
