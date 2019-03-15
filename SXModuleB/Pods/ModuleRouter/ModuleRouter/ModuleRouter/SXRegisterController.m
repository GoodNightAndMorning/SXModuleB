//
//  SXRegisterController.m
//  ModuleRouter
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019年 zsx. All rights reserved.
//

#import "SXRegisterController.h"
#import "SXControllerName.h"
#import <MGJRouter/MGJRouter.h>
@implementation SXRegisterController

/**
 注册router
 */
+(void)load {
    [MGJRouter registerURLPattern:R_AAViewController toHandler:^(NSDictionary *routerParameters) {
        [self pushViewController:routerParameters];
    }];
    [MGJRouter registerURLPattern:R_ABViewController toHandler:^(NSDictionary *routerParameters) {
        [self pushViewController:routerParameters];
    }];
    [MGJRouter registerURLPattern:R_ACViewController toHandler:^(NSDictionary *routerParameters) {
        [self pushViewController:routerParameters];
    }];
    
    [MGJRouter registerURLPattern:R_BAViewController toHandler:^(NSDictionary *routerParameters) {
        [self pushViewController:routerParameters];
    }];
    [MGJRouter registerURLPattern:R_BBViewController toHandler:^(NSDictionary *routerParameters) {
        [self pushViewController:routerParameters];
    }];
    [MGJRouter registerURLPattern:R_BCViewController toHandler:^(NSDictionary *routerParameters) {
        [self pushViewController:routerParameters];
    }];
}

/**
 push方法
 
 根据MGJRouterParameterURL得到类名称，创建对象，参数用kvc设置

 @param routerParameters routerParameters
 
 */
+(void)pushViewController:(NSDictionary *)routerParameters {
    NSLog(@"====routerParameters:%@",routerParameters);
    
    NSString *vcStr = [routerParameters[MGJRouterParameterURL] stringByReplacingOccurrencesOfString:@"mgj://" withString:@""];
    Class cl = NSClassFromString(vcStr);
    UIViewController *vc = [[cl alloc] init];
    
    NSDictionary *params = routerParameters[MGJRouterParameterUserInfo];
    
    for (NSString *key in params) {
        NSLog(@"key: %@ value: %@", key, params[key]);
        
        [vc setValue:params[key] forKey:key];
    }
    
    UINavigationController *navi = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    
    [navi pushViewController:vc animated:YES];
}
@end
