//
//  NSObject+Sum.h
//  BlockDemo
//
//  Created by 贺廷濬 on 2017/10/29.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SumManager.h"

@interface NSObject (Sum)

- (int)CBX_makeSumWith:(void(^)(SumManager *manager))block;

@end
