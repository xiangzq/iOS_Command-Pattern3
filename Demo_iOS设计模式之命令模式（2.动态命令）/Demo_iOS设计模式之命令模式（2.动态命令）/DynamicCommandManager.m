//
//  DynamicCommandManager.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/27.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import "DynamicCommandManager.h"
#import "DynamicCommand.h"

@interface DynamicCommandManager ()

@property(nonatomic,strong)NSMutableArray *commands;

@property(nonatomic,strong)GameRecipient *recipient;

@end

@implementation DynamicCommandManager

-(instancetype)initWithGameRecipient:(GameRecipient *)recipient{
    
    if (self = [super init]) {
        
        self.recipient = recipient;
        
        self.commands = [[NSMutableArray alloc]init];
        
    }
    
    return self;
}

//根据方法名称，动态加载执行对象的方法（runtime基础知识）
-(void)addCommandWithMethodName:(NSString *)name{
    
    //获取方法对象
    SEL method = NSSelectorFromString(name);
    
    [self.commands addObject:[DynamicCommand createCommand:self.recipient block:^(GameRecipient *recipient) {
        
        [self.recipient performSelector:method];
        
    }]];
    
    
}

-(void)up{
    
    [self addCommandWithMethodName:@"up"];
    
    [self.recipient up];
    
}

-(void)down{
    
    [self addCommandWithMethodName:@"down"];
    
    [self.recipient down];
    
}

-(void)left{
    
    [self addCommandWithMethodName:@"left"];
    
    [self.recipient left];
    
}

-(void)right{
    
    [self addCommandWithMethodName:@"right"];
    
    [self.recipient right];
    
}

-(void)fire{
    
    [self addCommandWithMethodName:@"fire"];
    
    [self.recipient fire];
    
}

-(void)undo{
    
    //倒序(队列->自己设计)
    if (self.commands.count > 0) {
        NSLog(@"撤销如下：...");
        //撤销->DynamicCommand
        [[self.commands lastObject] operation];
        //移除
        [self.commands removeLastObject];
    }
    
}

-(void)undoAll{
    
    NSLog(@"撤销所有");
    //倒数删除->课后去实现（循环倒数删除）
    //协议规范写法->语法规范
    for (id<GameCommandProtocol> command in self.commands) {
        [command operation];
    }
    [self.commands removeAllObjects];
    
}













@end



















