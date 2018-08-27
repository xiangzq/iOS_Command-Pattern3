//
//  DynamicCommand.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/27.
//  Copyright © 2018年 项正强. All rights reserved.
//

//动态命令类

#import <Foundation/Foundation.h>
#import "GameCommandProtocol.h"
#import "GameRecipient.h"

//动态接收者
typedef void(^dynamicBlock)(GameRecipient *recipient);

@interface DynamicCommand : NSObject <GameCommandProtocol>

+(id<GameCommandProtocol>)createCommand:(GameRecipient *)recipient block:(dynamicBlock)recipientBlock;

@end
