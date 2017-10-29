//
//  NSObject+Sum.m
//  BlockDemo
//
//  Created by 贺廷濬 on 2017/10/29.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import "NSObject+Sum.h"

@implementation NSObject (Sum)

- (int)CBX_makeSumWith:(void (^)(SumManager *))block {
    SumManager *manager = [SumManager new];
    block(manager);
    return manager.sum;
}

@end
