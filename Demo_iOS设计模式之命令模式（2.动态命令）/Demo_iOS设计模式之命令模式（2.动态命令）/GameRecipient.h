//
//  GameRecipient.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

//接收者-接受来自抽象协议的命令

#import <Foundation/Foundation.h>

@interface GameRecipient : NSObject

-(void)up;

-(void)down;

-(void)left;

-(void)right;

-(void)fire;
@end
