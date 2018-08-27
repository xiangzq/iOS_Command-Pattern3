//
//  GameCommandProtocol.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

//抽象命令协议

#ifndef GameCommandProtocol_h
#define GameCommandProtocol_h


//魂斗罗的命令协议（接口）
@protocol GameCommandProtocol<NSObject>


//具体的魂斗罗人物操作（上下左右跳开枪。。。等等）
-(void)operation;

@end


#endif /* GameCommandProtocol_h */
