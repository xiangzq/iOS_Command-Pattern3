//
//  DynamicCommandManager.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/27.
//  Copyright © 2018年 项正强. All rights reserved.
//

//动态命令管理器

#import <Foundation/Foundation.h>
#import "GameRecipient.h"

@interface DynamicCommandManager : NSObject

-(instancetype)initWithGameRecipient:(GameRecipient *)recipient;

-(void)up;

-(void)down;

-(void)left;

-(void)right;

-(void)fire;

-(void)undo;

-(void)undoAll;

@end
