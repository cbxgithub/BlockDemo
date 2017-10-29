//
//  Person.m
//  BlockDemo
//
//  Created by 贺廷濬 on 2017/10/29.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eatWith:(void (^)(void))block {
    block();
}

- (void(^)(int i))run {
    
    return ^(int i){
        NSLog(@"我走了%d米",i);
    };
}

- (Person *(^)(NSString *))travel {
    
    return ^(NSString *city){
        NSLog(@"我去了%@",city);
        return self;
    };
}

@end
