//
//  SumManager.h
//  BlockDemo
//
//  Created by 贺廷濬 on 2017/10/29.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SumManager : NSObject

@property (nonatomic, assign) int sum;

- (SumManager *(^)(int value))add;

@end
