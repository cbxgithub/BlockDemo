//
//  Person.h
//  BlockDemo
//
//  Created by 贺廷濬 on 2017/10/29.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//对Block的修饰：MRC用copy，ARC用Strong
@property (nonatomic, strong) void(^eat)(void);

//Block作为参数时，blockname不需要写在^后面，直接写在括号后面
- (void)eatWith:(void(^)(void))block;

//Block作为返回值
- (void(^)(int i))run;

//链式调用方法
- (Person *(^)(NSString *city))travel;

@end
