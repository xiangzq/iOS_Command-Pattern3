//
//  DynamicCommand.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/27.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import "DynamicCommand.h"

@interface DynamicCommand ()

//父类引用指向子类实例对象（面向对象编程） 架构设计中经常看到

@property(nonatomic,strong)GameRecipient *recipient;

@property(nonatomic,strong)dynamicBlock recipientBlock;

@end


@implementation DynamicCommand

-(instancetype)initWithGameRecipient:(GameRecipient *)recipient block:(dynamicBlock)recipientBlock{
    
    if (self = [super init]) {
        
        self.recipient = recipient;
        
        self.recipientBlock = recipientBlock;
        
    }
    
    return self;
}

-(void)operation{
    
    self.recipientBlock(self.recipient);
    
}

//创建对象的时候由于有的时候初始化参数过于复杂，这个时候可以内部提供，外部只需调用即可
+(id<GameCommandProtocol>)createCommand:(GameRecipient *)recipient block:(dynamicBlock)recipientBlock{
    
    return [[DynamicCommand alloc]initWithGameRecipient:recipient block:recipientBlock];
    
}

@end

















