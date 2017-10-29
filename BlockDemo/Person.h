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

@end
