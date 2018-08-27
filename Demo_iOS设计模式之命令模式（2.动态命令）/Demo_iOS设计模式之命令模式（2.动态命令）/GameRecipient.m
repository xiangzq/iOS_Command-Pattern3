//
//  GameRecipient.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import "GameRecipient.h"

@implementation GameRecipient

-(void)up{
    NSLog(@"操作：上");
}

-(void)down{
     NSLog(@"操作：下");
}

-(void)left{
     NSLog(@"操作：左");
}

-(void)right{
     NSLog(@"操作：右");
}

-(void)fire{
     NSLog(@"操作：开枪");
}

@end
