//
//  main.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GameRecipient.h"

#import "DynamicCommandManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //创建接收者
        GameRecipient *recipient = [[GameRecipient alloc]init];
        
        DynamicCommandManager *manager = [[DynamicCommandManager alloc]initWithGameRecipient:recipient];
        
        [manager up];
        
        [manager down];
        
        [manager left];
        
        [manager right];
        
        [manager fire];
        
        [manager undo];
        
        [manager undoAll];
        
        
    }
    return 0;
}














