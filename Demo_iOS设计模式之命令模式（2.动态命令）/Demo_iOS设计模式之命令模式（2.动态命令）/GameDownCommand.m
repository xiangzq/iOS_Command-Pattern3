//
//  GameDownCommand.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import "GameDownCommand.h"

@interface GameDownCommand ()

@property(nonatomic,strong)GameRecipient *recipient;

@end

@implementation GameDownCommand

-(instancetype)initWithRecipient:(GameRecipient *)recipient{
    
    self = [super init];
    
    if (self) {
        
        _recipient = recipient;
        
    }
    
    return self;
}

-(void)operation{
    
    [self.recipient down];
    
}

@end
