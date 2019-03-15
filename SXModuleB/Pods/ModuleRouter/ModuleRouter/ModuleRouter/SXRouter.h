//
//  SXRouter.h
//  ModuleRouter
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019年 zsx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SXRouter : NSObject
+(void)AAToABWithOrderId:(NSString *)orderId andBlock:(void(^)(void))block;
    +(void)ABToAC;

+(void)BAToABWithOrderId:(NSString *)orderId andBlock:(void(^)(void))block;
+(void)BAToBB;
    +(void)BBToAV;
    +(void)BBToBC;
        +(void)BCToAC;
@end

