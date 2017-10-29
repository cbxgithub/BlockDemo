//
//  SumManager.m
//  BlockDemo
//
//  Created by 贺廷濬 on 2017/10/29.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import "SumManager.h"

@implementation SumManager

- (SumManager *(^)(int))add {
    return ^(int value){
        self.sum+=value;
        return self;
    };
}

@end
