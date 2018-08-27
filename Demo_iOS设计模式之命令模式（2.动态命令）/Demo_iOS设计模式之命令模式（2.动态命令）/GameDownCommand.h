//
//  GameDownCommand.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GameCommandProtocol.h"

#import "GameRecipient.h"

@interface GameDownCommand : NSObject<GameCommandProtocol>

-(instancetype)initWithRecipient:(GameRecipient *)recipient;

@end
